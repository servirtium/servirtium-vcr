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
end
