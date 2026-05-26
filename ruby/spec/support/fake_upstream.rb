# frozen_string_literal: true

require 'socket'

# A throwaway HTTP/1.1 upstream for record-mode specs, built on a raw
# TCPServer (no extra gems). Returns a fixed body and captures the last
# request line and body so specs can assert what the VCR forwarded.
#
# By default it sends Content-Length (no chunking). Set +chunked: true+ to
# reply with Transfer-Encoding: chunked instead, exercising the Aether
# client's de-chunking (needs the native lib built with Aether >= 0.183.0).
class FakeUpstream
  attr_reader :base_url, :last_method, :last_path, :last_body

  def initialize(body: 'hello-from-upstream', content_type: 'text/plain', chunked: false)
    @body = body
    @content_type = content_type
    @chunked = chunked
    @server = TCPServer.new('127.0.0.1', 0)
    @port = @server.addr[1]
    @base_url = "http://127.0.0.1:#{@port}"
    @thread = Thread.new { serve }
  end

  def stop
    @running = false
    @server.close unless @server.closed?
    @thread&.join(1)
  end

  private

  def serve
    @running = true
    while @running
      client = begin
        @server.accept
      rescue IOError, Errno::EBADF
        break
      end
      handle(client)
    end
  end

  def handle(client)
    request_line = client.gets
    return client.close if request_line.nil?

    @last_method, @last_path, = request_line.split
    headers = read_headers(client)
    @last_body = read_body(client, headers)
    client.write(response)
  ensure
    client.close
  end

  def read_headers(client)
    headers = {}
    while (line = client.gets)
      line = line.chomp
      break if line.empty?

      name, value = line.split(':', 2)
      headers[name.strip.downcase] = value.to_s.strip
    end
    headers
  end

  def read_body(client, headers)
    len = headers['content-length'].to_i
    len.positive? ? client.read(len) : ''
  end

  def response
    @chunked ? chunked_response : sized_response
  end

  def chunked_response
    size = @body.bytesize.to_s(16)
    chunk = "#{size}\r\n#{@body}\r\n0\r\n\r\n"
    "HTTP/1.1 200 OK\r\n" \
      "Content-Type: #{@content_type}\r\n" \
      "Transfer-Encoding: chunked\r\n" \
      "Connection: close\r\n\r\n#{chunk}"
  end

  def sized_response
    "HTTP/1.1 200 OK\r\n" \
      "Content-Type: #{@content_type}\r\n" \
      "Content-Length: #{@body.bytesize}\r\n" \
      "Connection: close\r\n\r\n#{@body}"
  end
end
