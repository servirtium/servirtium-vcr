# consumer.cr — a third party using the packaged Crystal shard.
#
# `require "servirtium"` resolves the shard by NAME out of ./lib — the exact
# on-disk layout `shards install` produces — from a RELOCATED copy with no
# reference to this repo, and with SERVIRTIUM_VCR_LIB unset. Only the
# native/libservirtium_vcr.so bundled inside the shard satisfies the link, via
# the @[Link] ldflags' __DIR__-relative -L and rpath.
#
# Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
require "http/client"
require "servirtium"

TAPE = File.join(__DIR__, "tapes", "single_get.md")

Servirtium.playback(TAPE) do |vcr|
  body = HTTP::Client.get("#{vcr.base_url}/ok").body
  if body != "ok-body" || !vcr.matched_cleanly?
    STDERR.puts "FAIL: body=#{body} last_kind=#{vcr.last_kind}"
    exit 1
  end
end

puts "PASS[discovery]: consumer replayed the canonical tape from the installed shard"
