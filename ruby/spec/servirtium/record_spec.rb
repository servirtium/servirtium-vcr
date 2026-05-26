# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'tmpdir'
require 'support/fake_upstream'

RSpec.describe 'Servirtium record' do
  around do |example|
    @upstream = FakeUpstream.new(body: 'hello-from-upstream', chunked: true)
    Dir.mktmpdir('servirtium-ruby-rec') do |dir|
      @tape = File.join(dir, 'recorded.md')
      example.run
    end
  ensure
    @upstream.stop
  end

  def get(base_url, path)
    Net::HTTP.get_response(URI.join(base_url, path))
  end

  it 'records a live interaction then replays the same tape offline' do
    # ---- record (forwards to the live upstream, writes the tape on close) ----
    Servirtium.record(@tape, @upstream.base_url).port(0).start do |server|
      res = get(server.base_url, '/greeting')
      expect(res.body).to eq('hello-from-upstream')
    end

    expect(File.exist?(@tape)).to be(true)
    # Chunked upstream response must be de-chunked into the stored body.
    expect(File.read(@tape)).to include('hello-from-upstream')
    expect(File.read(@tape)).not_to match(/transfer-encoding/i)

    # ---- replay (offline) ----
    Servirtium.playback(@tape).port(0).start do |server|
      res = get(server.base_url, '/greeting')
      expect(res.body).to eq('hello-from-upstream')
      expect(server.last_kind).to eq(:ok)
    end
  end

  it 'redacts a value out of the response body before it lands on the tape' do
    @upstream = FakeUpstream.new(body: 'token=SECRET123 rest', chunked: false)
    Servirtium.record(@tape, @upstream.base_url)
              .redact(Servirtium::Field::RESPONSE_BODY, 'SECRET123', 'REDACTED')
              .port(0)
              .start do |server|
      res = get(server.base_url, '/secret')
      # The live SUT still sees the real bytes...
      expect(res.body).to eq('token=SECRET123 rest')
    end

    # ...but the committed tape is scrubbed.
    contents = File.read(@tape)
    expect(contents).to include('token=REDACTED rest')
    expect(contents).not_to include('SECRET123')
  end

  it 'attaches a builder note to the first recorded interaction' do
    Servirtium.record(@tape, @upstream.base_url)
              .note('Greeting', 'Establishes the session the next calls reuse')
              .port(0)
              .start do |server|
      get(server.base_url, '/greeting')
    end

    contents = File.read(@tape)
    expect(contents).to include('Greeting')
    expect(contents).to include('Establishes the session the next calls reuse')
  end
end
