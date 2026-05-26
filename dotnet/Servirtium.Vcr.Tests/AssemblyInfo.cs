using Xunit;

// The Aether VCR is "one active server per process" in v1 (its tape /
// cursor / mutation state is process-global). Concurrent VCR servers in one
// process stomp each other, so test classes must not run in parallel.
[assembly: CollectionBehavior(DisableTestParallelization = true)]
