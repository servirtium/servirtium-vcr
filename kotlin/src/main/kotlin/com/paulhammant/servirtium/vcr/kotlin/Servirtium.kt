@file:JvmName("Servirtium")

package com.paulhammant.servirtium.vcr.kotlin

import com.paulhammant.servirtium.vcr.PlaybackBuilder
import com.paulhammant.servirtium.vcr.RecordBuilder
import com.paulhammant.servirtium.vcr.Vcr
import com.paulhammant.servirtium.vcr.VcrServer

// Servirtium VCR for Kotlin.
//
// The Java binding (com.paulhammant.servirtium.vcr) is already Kotlin-friendly:
// no checked exceptions, AutoCloseable (so `use { }` works), fluent builders,
// and enums (Field / Outcome). You can call it directly:
//
//     Vcr.playback("tapes/x.md").port(0).start().use { vcr -> ... }
//
// These two helpers just add the trailing-lambda idiom Kotlin people expect,
// so builder config reads as a block:
//
//     playback("tapes/x.md") { port(0); strictHeaders() }.use { vcr ->
//         assertEquals(Outcome.OK, vcr.lastKind())
//     }

/**
 * Start a playback VCR replaying [tapePath]; [configure] the
 * [PlaybackBuilder] (port, strictHeaders, unredact, staticContent, …) in the
 * trailing lambda. The returned [VcrServer] is [AutoCloseable] — use `use { }`.
 */
inline fun playback(tapePath: String, configure: PlaybackBuilder.() -> Unit = {}): VcrServer =
    Vcr.playback(tapePath).apply(configure).start()

/**
 * Start a record VCR forwarding to [upstreamBase] and writing [tapePath] on
 * close; [configure] the [RecordBuilder] (port, redact, normalizeWholeTape,
 * failIfChanged, …) in the trailing lambda.
 */
inline fun record(tapePath: String, upstreamBase: String, configure: RecordBuilder.() -> Unit = {}): VcrServer =
    Vcr.record(tapePath, upstreamBase).apply(configure).start()
