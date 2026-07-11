# frozen_string_literal: true

# Third-party consumer example for the *installed* servirtium gem.
#
# Not a spec inside the source tree: this is what a downstream user gets after
# `gem install servirtium`. It loads the gem from GEM_HOME (asserting it is NOT
# the in-repo ruby/lib/), finds the native engine .so that shipped *inside* the
# gem, and replays the canonical Servirtium tape — proving the packaged gem is
# self-contained with no SERVIRTIUM_VCR_LIB and no access to this repo.
#
# Two modes, each in its own fresh process:
#   ruby consumer_example.rb explicit    # first-class native_lib: argument
#   ruby consumer_example.rb discovery    # zero-config: gem finds its own .so
#
# Exit 0 = pass.

require 'servirtium'
require 'net/http'

TAPE = File.join(__dir__, 'tapes', 'single_get.md')

def fail!(msg)
  warn "FAIL: #{msg}"
  exit 1
end

# The whole point: we must be running the INSTALLED gem, not the repo sources.
def gem_lib_dir
  loc = Servirtium.method(:playback).source_location&.first
  fail!('could not locate loaded servirtium source') unless loc
  # loc == <gemdir>/lib/servirtium/vcr.rb
  dir = File.dirname(loc) # <gemdir>/lib/servirtium
  unless dir.include?('/gems/')
    fail!("servirtium loaded from the source tree, not an installed gem: #{dir}. " \
          'Run with an isolated GEM_HOME, outside ruby/.')
  end
  puts "ok: consuming installed gem at #{dir}"
  dir
end

def bundled_so(lib_dir)
  so = File.join(lib_dir, 'native', 'libservirtium_vcr.so')
  fail!("bundled engine .so missing from the installed gem: #{so}") unless File.file?(so)
  so
end

def play(builder)
  builder.port(0).start do |vcr|
    body = Net::HTTP.get(URI(vcr.base_url + '/ok'))
    fail!("expected body 'ok-body', got #{body.inspect}") unless body == 'ok-body'
    fail!("expected Outcome OK (0), got #{vcr.last_kind_code}: #{vcr.last_error}") unless vcr.last_kind_code.zero?
  end
end

mode = ARGV[0] || 'explicit'
ENV.delete('SERVIRTIUM_VCR_LIB') # a real consumer sets nothing

lib_dir = gem_lib_dir

case mode
when 'explicit'
  so = bundled_so(lib_dir)
  play(Servirtium.playback(TAPE, native_lib: so))
  puts "ok: explicit native_lib: playback (bundled .so #{so})"
when 'discovery'
  play(Servirtium.playback(TAPE))
  puts 'ok: discovery playback (zero-config bundled .so)'
else
  fail!("unknown mode #{mode.inspect}; expected 'explicit' or 'discovery'")
end

puts "PASS[#{mode}]: consumer replayed the canonical tape from the installed gem"
