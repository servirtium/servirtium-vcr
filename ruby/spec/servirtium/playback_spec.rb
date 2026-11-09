# frozen_string_literal: true

require 'net/http'
require 'uri'

RSpec.describe 'Servirtium playback' do
  let(:tape) { File.expand_path('../tapes/single_get.md', __dir__) }

  def get(server, path)
    uri = URI.join(server.base_url, path)
    Net::HTTP.get_response(uri)
  end

  it 'replays a recorded GET from a tape with no network' do
    Servirtium.playback(tape).port(0).start do |server|
      res = get(server, '/ok')

      expect(res.code).to eq('200')
      expect(res.body).to eq('ok-body')
      expect(res['content-type']).to eq('text/plain')
      expect(server.last_kind).to eq(:ok)
      expect(server.tape_length).to eq(1)
    end
  end

  it 'answers an untaped path 404 without consuming the tape cursor' do
    Servirtium.playback(tape).untaped('/favicon.ico').port(0).start do |server|
      # The incidental path is answered 404 and never touches the tape.
      expect(get(server, '/favicon.ico').code).to eq('404')
      # The normal recorded interaction still replays (cursor not consumed).
      res = get(server, '/ok')
      expect(res.code).to eq('200')
      expect(res.body).to eq('ok-body')
      expect(server.last_kind).to eq(:ok)
    end
  end

  it 'reports a path/method mismatch via diagnostics' do
    Servirtium.playback(tape).port(0).start do |server|
      res = get(server, '/not-on-tape')

      # A miss returns a non-2xx to the SUT and flags the dispatch.
      expect(res.code).not_to eq('200')
      expect(server.last_kind).not_to eq(:ok)
      expect(server.last_error).not_to be_empty
    end
  end

  it 'rewinds the cursor with reset_cursor so the tape replays again' do
    Servirtium.playback(tape).port(0).start do |server|
      expect(get(server, '/ok').body).to eq('ok-body')
      server.reset_cursor
      expect(get(server, '/ok').body).to eq('ok-body')
      expect(server.last_kind).to eq(:ok)
    end
  end

  it 'returns the server when no block is given and #close is explicit' do
    server = Servirtium.playback(tape).port(0).start
    begin
      expect(get(server, '/ok').body).to eq('ok-body')
    ensure
      server.close
    end
    expect { server.port }.to raise_error(Servirtium::Error)
  end

  it 'raises a Servirtium::Error when the tape is missing' do
    expect { Servirtium.playback('does/not/exist.md').port(0).start }
      .to raise_error(Servirtium::Error, /failed to start/)
  end

  it 'reports the missing tape in the open error' do
    expect { Servirtium.playback('does/not/exist.md').port(0).start }
      .to raise_error(Servirtium::Error, /exist\.md/)
  end

  it 'opens and closes 50 times and tolerates a double close' do
    50.times do
      server = Servirtium.playback(tape).port(0).start
      expect(get(server, '/ok').body).to eq('ok-body')
      server.close
      server.close
    end
  end

  it 'substitutes a custom placeholder and tracks full replay' do
    base_tape = File.expand_path('../tapes/base_url.md', __dir__)
    builder = Servirtium.playback(base_tape)
                        .substitute(Servirtium::Field::RESPONSE_BODY, '@@HOST@@', 'http://sub.example')
    builder.port(0).start do |server|
      expect { server.assert_all_consumed }.to raise_error(Servirtium::Error)
      expect(get(server, '/where').body.rstrip).to eq('at http://sub.example/x')
      server.assert_all_consumed
      server.assert_all_redactions_used
      expect(server.last_tls_protocol).to eq('')
    end
  end

  describe 'playback range' do
    let(:range_tape) { File.expand_path('../tapes/playback_range.md', __dir__) }

    # Net::HTTP adds Accept/User-Agent/Accept-Encoding; the tape records only Cookie.
    def range_playback(range)
      b = Servirtium.playback(range_tape).redact_credentials.playback_range(*range)
      %w[Accept User-Agent Accept-Encoding].each { |h| b = b.remove_header(Servirtium::Field::REQUEST_HEADERS, h) }
      b.port(0)
    end

    def get_with_cookie(server, path)
      uri = URI.join(server.base_url, path)
      req = Net::HTTP::Get.new(uri)
      req['Cookie'] = 'sid=live'
      Net::HTTP.start(uri.host, uri.port) { |http| http.request(req) }
    end

    it 'skips early interactions and serves a later one' do
      range_playback([7]).start do |server|
        expect(server.tape_length).to eq(8)
        expect(get_with_cookie(server, '/logout').code).to eq('200')
        expect(server.last_index).to eq(7)
        expect(server.last_kind).to eq(:ok)
      end
      range_playback([7]).start do |server|
        get_with_cookie(server, '/login') # interaction 0 is outside the range
        expect(server.last_kind).not_to eq(:ok)
        expect(server.last_error).to include('outside the playback range')
      end
    end

    it 'raises at start for a bad range' do
      expect { Servirtium.playback(range_tape).playback_range(99).port(0).start }
        .to raise_error(Servirtium::Error, /playback_range/)
    end

    it 'is refused on a record handle' do
      Dir.mktmpdir('servirtium-ruby-range') do |dir|
        Servirtium.record(File.join(dir, 'r.md'), 'http://127.0.0.1:1').port(0).start do |server|
          handle = server.send(:handle)
          native = Servirtium.const_get(:Native)
          err = native.take_string(native.call(:set_playback_range, handle, 0, -1))
          expect(err).not_to be_empty
          expect(native.call(:get_playback_range_from, handle)).to eq(-1)
        end
      end
    end
  end
end


RSpec.describe 'Retained replay diagnostics' do
  it 'distinguishes observer and consuming reads and asserts retained failures' do
    require 'open3'
    require 'json'
    root = File.expand_path('../../..', __dir__)
    Servirtium.playback(File.join(root, 'core_tests/diagnostics/playback.md')).start do |server|
      server.test_context('Ruby scenario', source_file: 'scenario.test', source_line: 123)
      output, status = Open3.capture2e(File.join(root, 'target/test-tools/diagnostic_fixture'), server.base_url)
      expect(status.success?).to be(true), output
      expect(server.last_error(consume: false)).to include('owner', 'scenario.test:123')
      expect(JSON.parse(server.diagnostics_json).map { |e| e['retrieved'] }).to eq([0, 0])
      expect(server.last_error).to include('owner')
      expect(JSON.parse(server.diagnostics_json).map { |e| e['retrieved'] }).to eq([0, 1])
      expect { server.assert_no_mismatches }.to raise_error(Servirtium::Error, /admin/)
      server.test_context('next test')
      server.assert_no_mismatches
      expect(server.diagnostics_json).to eq('[]')
    end
  end
end
