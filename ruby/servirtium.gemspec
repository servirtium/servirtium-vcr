# frozen_string_literal: true

require_relative 'lib/servirtium/version'

Gem::Specification.new do |spec|
  spec.name = 'servirtium'
  spec.version = Servirtium::VERSION
  spec.authors = ['Rob Park', 'Paul Hammant']
  spec.email = ['robert.park@4legssoftware.com']

  spec.summary = 'Service Virtualization (record/replay) in the Servirtium markdown tape format'
  spec.description = <<~DESCRIPTION
    A thin Ruby (Fiddle) wrapper over the Aether VCR core. Point your
    system-under-test at a local URL: in playback it replays a recorded
    Servirtium markdown tape (no network); in record it forwards to the real
    service, returns the live response, and writes the tape. The record/replay
    engine ships as a precompiled native library; this gem just starts/stops
    it and presents an idiomatic API.
  DESCRIPTION
  spec.homepage = 'https://github.com/servirtium/servirtium-ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/CHANGELOG.md"
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Ship the Ruby sources plus the bundled native library (per-platform .so/
  # .dylib/.dll under lib/servirtium/native/).
  spec.files = Dir['lib/**/*'] + ['README.md', 'CHANGELOG.md', 'LICENSE.txt']
  spec.require_paths = ['lib']

  # No runtime gem dependencies: the engine is the native library, loaded via
  # the Ruby stdlib's Fiddle.
end
