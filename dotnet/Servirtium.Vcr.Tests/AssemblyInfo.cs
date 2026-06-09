using Xunit;

// The VCR core is handle-based: N servers can run concurrently, one server
// per port, each keyed by its own handle. Test classes are still kept
// serial here for deterministic ordering and to avoid contention over the
// fixtures' shared resources.
[assembly: CollectionBehavior(DisableTestParallelization = true)]
