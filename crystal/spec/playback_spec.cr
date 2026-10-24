# playback_spec.cr — playback facts for the Crystal binding.
#
# Proves Crystal drives libservirtium_vcr's flat C ABI directly (via the LibVcr `lib`
# block) against the canonical one-interaction tape (GET /ok -> 200 text/plain
# "ok-body") — the same tape every other binding in this repo replays
# byte-for-byte. Needs only the libservirtium_vcr.so (linked via the @[Link] ldflags /
# the staged native/ dir). Crystal's built-in `spec` framework.
require "spec"
require "http/client"
require "../src/servirtium"

# The tape by absolute path, derived from this spec file's location, so the
# facts don't depend on the working directory `crystal spec` was launched from.
TAPE = File.join(__DIR__, "..", "tapes", "single_get.md")

describe Servirtium do
  it "replays the canonical tape body" do
    Servirtium.playback(TAPE) do |vcr|
      HTTP::Client.get("#{vcr.base_url}/ok").body.should eq("ok-body")
    end
  end

  it "reports a clean match" do
    Servirtium.playback(TAPE) do |vcr|
      HTTP::Client.get("#{vcr.base_url}/ok")
      vcr.last_kind.should eq(Servirtium::Outcome::Ok)
      vcr.matched_cleanly?.should be_true
      vcr.last_index.should eq(0)
      vcr.last_error.should eq("")
    end
  end

  it "exposes the tape length and a bound port" do
    Servirtium.playback(TAPE) do |vcr|
      vcr.tape_length.should eq(1)
      vcr.port.should be > 0
      vcr.base_url.should start_with("http://127.0.0.1:")
    end
  end

  it "flags a path that is not on the tape" do
    Servirtium.playback(TAPE) do |vcr|
      HTTP::Client.get("#{vcr.base_url}/nope").status_code.should_not eq(200)
      vcr.last_kind.should_not eq(Servirtium::Outcome::Ok)
    end
  end

  it "replays again after reset_cursor" do
    Servirtium.playback(TAPE) do |vcr|
      HTTP::Client.get("#{vcr.base_url}/ok").body.should eq("ok-body")
      vcr.reset_cursor
      HTTP::Client.get("#{vcr.base_url}/ok").body.should eq("ok-body")
      vcr.last_kind.should eq(Servirtium::Outcome::Ok)
    end
  end

  it "raises a typed error when the tape is missing" do
    expect_raises(Servirtium::Error, /open failed/) do
      Servirtium.playback("#{TAPE}.nonexistent")
    end
  end

  it "closes the server when the block ends, so a new one can bind" do
    first = Servirtium.playback(TAPE, &.port)
    second = Servirtium.playback(TAPE, &.port)
    first.should be > 0
    second.should be > 0
  end

  it "is idempotent on close" do
    vcr = Servirtium.playback(TAPE)
    vcr.close
    vcr.close
  end

  it "runs two servers concurrently, one per handle" do
    a = Servirtium.playback(TAPE)
    b = Servirtium.playback(TAPE)
    begin
      a.port.should_not eq(b.port)
      HTTP::Client.get("#{a.base_url}/ok").body.should eq("ok-body")
      HTTP::Client.get("#{b.base_url}/ok").body.should eq("ok-body")
    ensure
      a.close
      b.close
    end
  end
end


describe "Structured redaction helpers" do
  it "forwards credentials and scrubs the tape" do
    directory = File.tempname("vcr-helpers")
    Dir.mkdir(directory)
    fixture = File.expand_path("../../core_tests/redaction_fixture.py", __DIR__)
    run = ->(args : Array(String)) do
      output = IO::Memory.new
      status = Process.run("python3", [fixture] + args, output: output, error: output)
      status.success?.should be_true
      output.to_s.strip
    end
    begin
      upstream = run.call(["start", directory])
      Servirtium.record(File.join(directory, "tape.md"), upstream) do |rec|
        rec.redact_header("Authorization")
        rec.redact_query_param("password")
        rec.redact_json_field("secretKey")
        run.call(["drive", directory, rec.base_url])
        rec.last_kind.should eq(Servirtium::Outcome::Ok)
      end
      run.call(["check", directory])
    ensure
      Dir.glob(File.join(directory, "*")).each { |file| File.delete(file) }
      Dir.delete(directory)
    end
  end
end


describe "Retained replay diagnostics" do
  it "supports observers, consumption and assertions" do
    root = File.expand_path("../..", __DIR__)
    Servirtium.playback(File.join(root, "core_tests/diagnostics/playback.md")) do |server|
      server.test_context("Crystal scenario", "scenario.test", 123)
      Process.run("python3", [File.join(root, "core_tests/diagnostic_fixture.py"), server.base_url]).success?.should be_true
      server.last_error(false).should contain("owner")
      server.last_error(false).should contain("scenario.test:123")
      server.diagnostics_json.should_not contain("\"retrieved\":1")
      server.last_error.should contain("owner")
      server.diagnostics_json.should contain("\"retrieved\":0")
      server.diagnostics_json.should contain("\"retrieved\":1")
      expect_raises(Servirtium::Error, /admin/) { server.assert_no_mismatches }
      server.test_context("next test")
      server.assert_no_mismatches
      server.diagnostics_json.should eq("[]")
    end
  end
end

describe "named secrets" do
  it "redacts at emission and resolves four services" do
    directory = File.tempname("vcr-secrets-")
    Dir.mkdir(directory)
    tape = File.join(directory, "tape.md")
    fixture = File.expand_path("../../core_tests/secret_fixture.py", __DIR__)
    run = ->(action : String, arg : String) {
      output = IO::Memory.new
      status = Process.run("python3", [fixture, action, arg], output: output, error: output)
      status.success?.should be_true
      output.to_s.strip
    }
    begin
      count = 0
      rec = Servirtium.record(tape, run.call("start", directory))
      rec.secret_redactor do |key, request|
        if key == "password"
          count += 1
          request.path.split('/')[1].upcase + "_PASSWORD"
        else
          nil
        end
      end
      begin
        run.call("drive", rec.base_url); count.should eq(0)
      ensure
        rec.flush
      end
      count.should eq(20); run.call("check", tape)
      resolver = ->(token : String) : String? { "pw-" + token.gsub("_PASSWORD", "").downcase + "&secret" }
      replay = Servirtium.playback(tape, secret_resolver: resolver)
      begin
        run.call("drive", replay.base_url); replay.assert_no_mismatches
      ensure
        replay.close
      end
      run.call("check", tape)
    ensure
      Dir.each_child(directory) { |file| File.delete(File.join(directory, file)) }
      Dir.delete(directory)
    end
  end
end
