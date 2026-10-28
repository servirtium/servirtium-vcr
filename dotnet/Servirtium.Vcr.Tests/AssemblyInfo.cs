using Xunit;

// The VCR core is handle-based: N servers run concurrently, one server per
// port, each keyed by its OWN handle. Test parallelization is ENABLED on
// purpose — it is the regression guard for that isolation (see
// ConcurrencyTests). It was previously disabled to work around a core bug
// where load/config/flush reached their per-handle state through a
// process-global "current key" (vcr.ae set_cur_key), so parallel servers
// cross-contaminated; that is fixed by threading the handle's key through
// those paths. If this is ever flipped back to true, suspect that regression.
[assembly: CollectionBehavior(DisableTestParallelization = false)]
