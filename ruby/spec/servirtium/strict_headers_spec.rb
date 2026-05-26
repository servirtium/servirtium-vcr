# frozen_string_literal: true

require 'net/http'
require 'uri'

# Net::HTTP sends default request headers (Host, Accept-Encoding, User-Agent,
# Accept, Connection). Under strict header matching against a tape that
# records *no* request headers, those defaults would trip the comparison —
# so we drop them with remove_header(REQUEST_HEADERS, name). This is the
# documented pattern for keeping a strict-match suite green against a client
# that injects defaults.
NET_HTTP_DEFAULT_HEADERS = %w[Host Accept-Encoding User-Agent Accept Connection].freeze

RSpec.describe 'Servirtium strict header matching' do
  let(:tape) { File.expand_path('../tapes/single_get.md', __dir__) }

  def get(server, path)
    Net::HTTP.get_response(URI.join(server.base_url, path))
  end

  it 'matches cleanly once the client default headers are ignored' do
    builder = Servirtium.playback(tape).strict_headers.port(0)
    NET_HTTP_DEFAULT_HEADERS.each do |name|
      builder.remove_header(Servirtium::Field::REQUEST_HEADERS, name)
    end

    builder.start do |server|
      res = get(server, '/ok')
      expect(res.body).to eq('ok-body')
      expect(server.last_kind).to eq(:ok)
      expect(server.last_error).to be_empty
    end
  end
end
