package com.paulhammant.servirtium.vcr.groovy

import com.paulhammant.servirtium.vcr.Vcr
import com.paulhammant.servirtium.vcr.VcrServer

// Servirtium VCR for Groovy.
//
// The Java binding (com.paulhammant.servirtium.vcr) is already Groovy-friendly:
// no checked exceptions, AutoCloseable, fluent builders, and enums
// (Field / Outcome). You can call it directly:
//
//     def vcr = Vcr.playback("tapes/x.md").port(0).start()
//     try { ... } finally { vcr.close() }
//
// These two helpers just add the trailing-closure idiom Groovy people expect,
// so builder config reads as a block:
//
//     playback("tapes/x.md") { port(0); strictHeaders() }.withCloseable { vcr ->
//         assert vcr.lastKind() == Outcome.OK
//     }
class Servirtium {

    /**
     * Start a playback VCR replaying {@code tapePath}; {@code configure} the
     * PlaybackBuilder (port, strictHeaders, unredact, staticContent, ...) in the
     * trailing closure. The returned VcrServer is AutoCloseable.
     */
    static VcrServer playback(String tapePath, Closure configure = null) {
        def builder = Vcr.playback(tapePath)
        if (configure != null) {
            configure.delegate = builder
            configure.resolveStrategy = Closure.DELEGATE_FIRST
            configure()
        }
        builder.start()
    }

    /**
     * Start a record VCR forwarding to {@code upstreamBase} and writing
     * {@code tapePath} on close; {@code configure} the RecordBuilder (port,
     * redact, normalizeWholeTape, failIfChanged, ...) in the trailing closure.
     */
    static VcrServer record(String tapePath, String upstreamBase, Closure configure = null) {
        def builder = Vcr.record(tapePath, upstreamBase)
        if (configure != null) {
            configure.delegate = builder
            configure.resolveStrategy = Closure.DELEGATE_FIRST
            configure()
        }
        builder.start()
    }
}
