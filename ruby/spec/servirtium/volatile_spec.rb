# frozen_string_literal: true

require 'open3'
require 'tmpdir'
require 'net/http'
require 'uri'
require 'support/fake_upstream'

# Volatile values (docs/volatile-values.md): placeholders in rules, tokens in
# tapes, bind. Rules, tokens and matching live in the core; these specs prove
# the Ruby builder and server pass them through, using the shared tapes in
# core_tests/volatile/ and the driver target/test-tools/volatile_fixture.
RSpec.describe 'Volatile values' do
  root = File.expand_path('../../..', __dir__)
  fixture = File.join(root, 'target/test-tools/volatile_fixture')
  tape = ->(name) { File.join(root, 'core_tests/volatile', name) }
  guid = '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'

  run_fixture = lambda do |scenario, server|
    output, status = Open3.capture2e(fixture, scenario, server.base_url)
    [status.success?, output]
  end

  wcf_rules = lambda do |builder|
    builder
      .volatile_rule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
      .volatile_rule('request body', '<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
      .volatile_rule('request body', '&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;')
      .volatile_rule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')
  end

  def start_error(builder)
    builder.start { |_server| nil }
    nil
  rescue Servirtium::Error => e
    e.message
  end

  describe 'playback' do
    it "lets a tape's own rules block carry a WCF conversation, and reports the binding" do
      Servirtium.playback(tape.('wcf.md')).pretty_xml(2).start do |server|
        ok, output = run_fixture.('wcf', server)
        expect(ok).to be(true), output
        expect(server.volatile_report).to include('binding: {{messageId-1}} = ')
      end
    end

    it 'applies a profile file to a tape with no rules of its own' do
      Servirtium.playback(tape.('wcf_plain.md')).pretty_xml(2).volatile_profile(tape.('profile.md')).start do |server|
        ok, output = run_fixture.('wcf', server)
        expect(ok).to be(true), output
      end
    end

    it 'takes the rules in code' do
      wcf_rules.(Servirtium.playback(tape.('wcf_plain.md')).pretty_xml(2)).start do |server|
        ok, output = run_fixture.('wcf', server)
        expect(ok).to be(true), output
      end
    end

    it 'fails the plain WCF tape without rules (the fixture is a real test)' do
      Servirtium.playback(tape.('wcf_plain.md')).pretty_xml(2).start do |server|
        ok, = run_fixture.('wcf', server)
        expect(ok).to be(false)
      end
    end

    it 'reads a ${name} tape with :dollar_curly markers, and refuses it with the default' do
      Servirtium.playback(tape.('wcf_dollar.md')).pretty_xml(2).volatile_markers(:dollar_curly).start do |server|
        ok, output = run_fixture.('wcf', server)
        expect(ok).to be(true), output
      end
      expect(start_error(Servirtium.playback(tape.('wcf_dollar.md')).pretty_xml(2))).to include('DollarCurly')
    end

    it 'applies markers before the rules whatever the call order' do
      builder = Servirtium.playback(tape.('wcf_dollar.md')).pretty_xml(2)
                          .volatile_rule('request body', '<a:MessageID>urn:uuid:${messageId}</a:MessageID>')
                          .volatile_markers(:dollar_curly)
      expect(start_error(builder)).to be_nil
    end

    it 'rejects a marker style that does not exist' do
      expect { Servirtium.playback(tape.('cases.md')).volatile_markers(:handlebars) }.to raise_error(ArgumentError)
    end

    it 'names the binding in a mismatch, readable without consuming it' do
      Servirtium.playback(tape.('cases.md')).start do |server|
        ok, output = run_fixture.('cases', server)
        expect(ok).to be(true), output
        server.reset_cursor
        ok, output = run_fixture.('cases-mismatch', server)
        expect(ok).to be(true), output
        expect(server.last_error(consume: false)).to include('{{caseId-1}} = 42')
        expect(server.last_error(consume: false)).to include('{{caseId-1}} = 42')
        expect(server.last_error).to include('{{caseId-1}} = 42')
      end
    end

    it 'reports the binding only once it was made' do
      Servirtium.playback(tape.('cases.md')).start do |server|
        expect(server.volatile_report).not_to include('{{caseId-1}} = 42')
        expect(run_fixture.('cases', server).first).to be(true)
        expect(server.volatile_report).to include('{{caseId-1}} = 42')
      end
    end

    it 'needs a bind for a token nothing in the tape binds, and takes one' do
      expect(start_error(Servirtium.playback(tape.('cases_recorded.md')))).to include('caseId')
      Servirtium.playback(tape.('cases_recorded.md')).bind('caseId', '42').start do |server|
        ok, output = run_fixture.('cases', server)
        expect(ok).to be(true), output
      end
    end

    it 'chains, and may be called repeatedly' do
      builder = Servirtium.playback(tape.('cases.md'))
      expect(builder.volatile_rule('response headers', 'ETag: {{etag}}')).to equal(builder)
      expect(builder.volatile_rule('response headers', 'X-Request-Id: {{requestId}}').bind('etag', 'e1')).to equal(builder)
      expect(builder.volatile_profile(tape.('profile.md')).pretty_xml(2).volatile_markers(:mustache)).to equal(builder)
    end
  end

  describe 'configuration errors fail start with the core message' do
    it 'rejects a rule without a placeholder' do
      expect(start_error(Servirtium.playback(tape.('cases.md')).volatile_rule('request body', 'no placeholder')))
        .to include('needs at least one placeholder')
    end

    it 'rejects a rule that conflicts with the tape' do
      message = start_error(Servirtium.playback(tape.('cases.md'))
                                      .volatile_rule('response body', '"caseId":"{{id}}"'))
      expect(message).to include('conflicts with').and include('(tape)')
    end

    it 'rejects a regex rule written with a template placeholder' do
      expect(start_error(Servirtium.playback(tape.('cases.md')).volatile_rule('x', 'a {{b}}', 'regex'))).not_to be_nil
    end

    it 'rejects an unknown kind' do
      expect(start_error(Servirtium.playback(tape.('cases.md')).volatile_rule('request body', 'a {{b}}', 'glob')))
        .not_to be_nil
    end

    it 'rejects a missing profile file' do
      expect(start_error(Servirtium.playback(tape.('cases.md')).volatile_profile('/nonexistent/profile.md')))
        .to include('volatile_profile')
    end

    it 'raises Servirtium::Error naming the failing call' do
      expect { Servirtium.playback(tape.('cases.md')).volatile_rule('request body', 'nope').start { |_s| nil } }
        .to raise_error(Servirtium::Error, /vcr volatile_rule failed/)
    end
  end

  describe 'record' do
    around do |example|
      @upstream = FakeUpstream.new(body: 'order 5f1d0c6e-2a8b-4c3e-9d41-7b6a0f2e8c13 accepted')
      Dir.mktmpdir('servirtium-ruby-volatile') do |dir|
        @tape = File.join(dir, 'recorded.md')
        example.run
      end
    ensure
      @upstream.stop
    end

    def fetch(server)
      Net::HTTP.get_response(URI.join(server.base_url, '/orders'))
    end

    it 'writes the placeholder as a token and the rule into the tape' do
      Servirtium.record(@tape, @upstream.base_url)
                .volatile_rule('response body', "order (?<orderId>#{guid}) accepted", 'regex')
                .port(0).start { |server| fetch(server) }

      written = File.read(@tape)
      expect(written).to include('order {{orderId}} accepted')
      expect(written).not_to include('5f1d0c6e-2a8b-4c3e-9d41-7b6a0f2e8c13')
      expect(written).to include('## Volatile values')
    end

    it 'plays that tape back needing no rules in code' do
      Servirtium.record(@tape, @upstream.base_url)
                .volatile_rule('response body', "order (?<orderId>#{guid}) accepted", 'regex')
                .port(0).start { |server| fetch(server) }

      Servirtium.playback(@tape).bind('orderId', '0b6c35a3-7f2e-4f5f-8b2a-1d6e4c9a2f70').port(0).start do |server|
        expect(fetch(server).body).to eq('order 0b6c35a3-7f2e-4f5f-8b2a-1d6e4c9a2f70 accepted')
      end
    end

    it 'takes markers and a rule on the record builder, and fails start on a bad rule' do
      builder = Servirtium.record(@tape, @upstream.base_url).volatile_markers(:wikilink)
                          .volatile_rule('response body', 'order [[orderId]] accepted').port(0)
      expect(start_error(builder)).to be_nil
      expect(start_error(Servirtium.record("#{@tape}.2", @upstream.base_url).volatile_rule('request body', 'none').port(0)))
        .to include('needs at least one placeholder')
    end
  end
end
