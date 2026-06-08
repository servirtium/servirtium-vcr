#!/usr/bin/env ruby
# frozen_string_literal: true

# TodoBackend browser integration test — RECORD phase (manual, on-demand).
#
# VCR in record mode, forwarding to the live Kotlin/http4k SUT
# (TODOBACKEND_UPSTREAM). The Mocha spec runs in headless Chrome (Ruby
# selenium) against the VCR; every CRUD call is forwarded upstream and
# recorded, then flushed to the tape on close. The suite must pass for the
# recording to be considered good.
#
# Driven by .ruby_record.ae, which brings the SUT up in a container (started
# with its baseUrl set to the VCR origin, so the todo URLs it returns point
# back at the VCR) and tears it down afterward. Not an aeb node — recording is
# on-demand and must never run during a normal build (it needs the container +
# sibling source).

require 'servirtium'

require_relative 'browser'

def main
  upstream = ENV.fetch('TODOBACKEND_UPSTREAM', nil)
  unless upstream && !upstream.empty?
    puts 'record.rb: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)'
    return 2
  end

  vcr = Servirtium.record(TAPE, upstream)
                  .static_content('/suite', SUITE_DIR)
                  .untaped('/favicon.ico')
                  .normalize_whole_tape('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}', 'id')
                  .redact_whole_tape('Date: .+ GMT', 'Date: <DATE>')
                  .port(VCR_PORT)
                  .start
  begin
    passes, failures, msgs = run_suite(vcr.base_url)
    puts "mocha (record): #{passes} passed, #{failures} failed"
    msgs.each { |m| puts "  FAIL: #{m}" }
    if !failures.zero? || passes.zero?
      puts 'record: suite did not pass against the live SUT; tape NOT trustworthy'
      return 1
    end
  ensure
    vcr.close # flushes the tape to TAPE
  end

  puts "record: wrote #{TAPE}"
  0
end

exit(main) if $PROGRAM_NAME == __FILE__
