using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using Servirtium.Vcr;
using Xunit;

namespace Servirtium.Vcr.Tests;

/// <summary>
/// Record-mode breadth: redaction, header removal, notes, drift detection,
/// non-GET verbs, and (critically) that per-handle mutation state does
/// not leak from one fixture to the next.
/// </summary>
public class RecordMutationTests : IDisposable
{
    private readonly FakeUpstream _upstream = new();
    private readonly string _tape = Path.Combine(Path.GetTempPath(), $"vcr_{Guid.NewGuid():N}.md");
    private readonly string _tape2 = Path.Combine(Path.GetTempPath(), $"vcr_{Guid.NewGuid():N}.md");

    [Fact]
    public async Task Redacts_response_body_before_it_lands_on_the_tape()
    {
        _upstream.ResponseBody = "value=secret-token";

        using (var rec = Vcr.Record(_tape, _upstream.BaseUrl)
                   .Redact(VcrField.ResponseBody, "secret-token", "REDACTED")
                   .Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }

        string tape = File.ReadAllText(_tape);
        Assert.Contains("REDACTED", tape);
        Assert.DoesNotContain("secret-token", tape);
    }

    [Fact]
    public async Task Attaches_a_note_to_the_recorded_interaction()
    {
        using (var rec = Vcr.Record(_tape, _upstream.BaseUrl)
                   .Note("Why this exists", "documents the call")
                   .Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }

        Assert.Contains("## [Note] Why this exists:", File.ReadAllText(_tape));
    }

    [Fact]
    public async Task Removes_a_named_response_header_from_the_tape()
    {
        _upstream.ExtraResponseHeaders["X-Trace-Id"] = "abc123";

        // Phase 1: without removal, the header is captured on the tape.
        using (var rec = Vcr.Record(_tape, _upstream.BaseUrl).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.Contains("X-Trace-Id", File.ReadAllText(_tape));

        // Phase 2: with removal, it's gone.
        using (var rec = Vcr.Record(_tape2, _upstream.BaseUrl)
                   .RemoveHeader(VcrField.ResponseHeaders, "X-Trace-Id")
                   .Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.DoesNotContain("X-Trace-Id", File.ReadAllText(_tape2));
    }

    [Fact]
    public async Task Mutation_state_does_not_leak_between_fixtures()
    {
        // Fixture A registers a redaction for "leak".
        _upstream.ResponseBody = "leak";
        using (var a = Vcr.Record(_tape, _upstream.BaseUrl)
                   .Redact(VcrField.ResponseBody, "leak", "SCRUBBED")
                   .Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(a.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.Contains("SCRUBBED", File.ReadAllText(_tape));

        // Fixture B registers NO redaction; A's must not leak in.
        using (var b = Vcr.Record(_tape2, _upstream.BaseUrl).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(b.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.Contains("leak", File.ReadAllText(_tape2));
        Assert.DoesNotContain("SCRUBBED", File.ReadAllText(_tape2));
    }

    [Fact]
    public async Task FailIfChanged_throws_when_a_re_record_drifts()
    {
        // First record creates the tape — no drift, no throw.
        _upstream.ResponseBody = "v1";
        using (var first = Vcr.Record(_tape, _upstream.BaseUrl).FailIfChanged().Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(first.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.True(File.Exists(_tape));

        // Re-record with a changed upstream — dispose must throw, while still
        // writing the new tape for `git diff`.
        _upstream.ResponseBody = "v2-changed";
        var second = Vcr.Record(_tape, _upstream.BaseUrl).FailIfChanged().Port(0).Start();
        using (var client = new HttpClient { BaseAddress = new Uri(second.BaseUrl) })
        {
            await client.GetStringAsync("/x");
        }
        Assert.Throws<VcrException>(() => second.Dispose());
        Assert.Contains("v2-changed", File.ReadAllText(_tape));
    }

    [Fact]
    public async Task Records_and_replays_a_post_with_a_body()
    {
        _upstream.ResponseBody = "created";

        using (var rec = Vcr.Record(_tape, _upstream.BaseUrl).Port(0).Start())
        using (var client = new HttpClient { BaseAddress = new Uri(rec.BaseUrl) })
        {
            var resp = await client.PostAsync("/submit", new StringContent("ping"));
            Assert.Equal("created", await resp.Content.ReadAsStringAsync());
            Assert.Equal("POST", _upstream.LastMethod);
        }

        // Replay the same POST offline.
        using var play = Vcr.Playback(_tape).Port(0).Start();
        using var offline = new HttpClient { BaseAddress = new Uri(play.BaseUrl) };
        var replayed = await offline.PostAsync("/submit", new StringContent("ping"));
        Assert.Equal("created", await replayed.Content.ReadAsStringAsync());
        Assert.Equal(VcrOutcome.Ok, play.LastKind);
    }

    public void Dispose()
    {
        _upstream.Dispose();
        foreach (string t in new[] { _tape, _tape2 })
        {
            if (File.Exists(t)) File.Delete(t);
        }
    }
}
