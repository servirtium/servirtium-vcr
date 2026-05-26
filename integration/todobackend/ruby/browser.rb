# frozen_string_literal: true

# Run the vendored TodoBackend Mocha spec in real headless Chrome against a
# Servirtium VCR, and report the result. Mirrors the Python browser.py, but
# drives Chrome with Ruby's own selenium-webdriver gem.
#
# Shared by both phases:
#   * record.rb        — VCR in record mode, forwarding to the live Kotlin SUT
#   * playback_test.rb — VCR replaying the committed tape, no SUT
#
# The suite is served *same-origin* from the VCR's own static-content mount
# (`/suite`), so the browser's API calls to the VCR root are same-origin — no
# CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
# untaped.
#
# Fixed port: the recorded responses embed absolute todo URLs
# (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
# response bodies verbatim — so playback MUST bind the same port the tape was
# recorded against. Hence a fixed VCR_PORT for both phases rather than port 0.

require 'pathname'
require 'selenium-webdriver'

HERE = Pathname.new(__dir__).realpath
BASE = HERE.parent # integration/todobackend — suite/ and tapes/ are shared here
SUITE_DIR = (BASE + 'suite').to_s
TAPE = (BASE + 'tapes' + 'todobackend_crud.md').to_s

# Both phases bind here (see the comment above on why it can't be dynamic).
VCR_PORT = 51_080

# Drive runner.html?<api_root> in headless Chrome until Mocha finishes.
#
# Returns [passes, failures, fail_messages]. api_root defaults to the VCR root
# (same origin as the served suite).
def run_suite(vcr_base_url, api_root: nil, timeout: 120)
  api_root ||= vcr_base_url
  url = "#{vcr_base_url}/suite/runner.html?#{api_root}"

  opts = Selenium::WebDriver::Chrome::Options.new
  ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu'].each do |a|
    opts.add_argument(a)
  end
  driver = Selenium::WebDriver.for(:chrome, options: opts)
  begin
    driver.navigate.to(url)
    Selenium::WebDriver::Wait.new(timeout: timeout).until do
      driver.execute_script('return window.__mochaDone === true')
    end
    passes = driver.execute_script('return window.__mochaPasses')
    failures = driver.execute_script('return window.__mochaFailures')
    msgs = driver.execute_script('return window.__mochaFailMsgs') || []
    [passes, failures, msgs]
  ensure
    driver.quit
  end
end
