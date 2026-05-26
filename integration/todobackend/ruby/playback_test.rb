#!/usr/bin/env ruby
# frozen_string_literal: true

# TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
#
# Replays the committed CRUD tape through a Servirtium VCR and runs the real
# TodoBackend Mocha spec against it in headless Chrome (Ruby selenium). No SUT,
# no network — the whole CRUD conversation comes off the tape. This is the
# offline test wired into aeb (integration/todobackend/.ruby_playback.ae);
# record.rb regenerates the tape.
#
# Run via the .ruby_playback.ae node, or directly:
#   SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
#   RUBYLIB=../../../ruby/lib ruby playback_test.rb

require 'servirtium'

require_relative 'browser'

def main
  vcr = Servirtium.playback(TAPE)
                  .static_content('/suite', SUITE_DIR)
                  .untaped('/favicon.ico')
                  .port(VCR_PORT)
                  .start
  begin
    passes, failures, msgs = run_suite(vcr.base_url)
    puts "mocha (playback): #{passes} passed, #{failures} failed"
    msgs.each { |m| puts "  FAIL: #{m}" }
    ok = failures.zero? && passes.positive?
    puts(ok ? 'TODOBACKEND_PLAYBACK_OK' : 'TODOBACKEND_PLAYBACK_FAIL')
    ok ? 0 : 1
  ensure
    vcr.close
  end
end

exit(main) if $PROGRAM_NAME == __FILE__
