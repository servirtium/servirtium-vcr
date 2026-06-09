package com.paulhammant.servirtium.vcr.scala

import com.paulhammant.servirtium.vcr.{PlaybackBuilder, RecordBuilder, Vcr, VcrServer}

// Servirtium VCR for Scala.
//
// The Java binding (com.paulhammant.servirtium.vcr) is already Scala-friendly:
// no checked exceptions, AutoCloseable, fluent builders, and enums (Field /
// Outcome). You can call it directly:
//
//     val vcr = Vcr.playback("tapes/x.md").port(0).start()
//
// Scala has no Kotlin-style receiver lambdas, so these helpers take the builder
// as an ordinary function argument (Builder => Unit), letting config read as a
// block while staying thin:
//
//     val vcr = playback("tapes/x.md") { b => b.port(0); b.strictHeaders() }
object Servirtium:

  /**
   * Start a playback VCR replaying `tapePath`; `configure` the
   * [[PlaybackBuilder]] (port, strictHeaders, unredact, staticContent, …). The
   * returned [[VcrServer]] is `AutoCloseable`.
   */
  def playback(tapePath: String)(configure: PlaybackBuilder => Unit = _ => ()): VcrServer =
    val b = Vcr.playback(tapePath)
    configure(b)
    b.start()

  /**
   * Start a record VCR forwarding to `upstreamBase` and writing `tapePath` on
   * close; `configure` the [[RecordBuilder]] (port, redact, normalizeWholeTape,
   * failIfChanged, …).
   */
  def record(tapePath: String, upstreamBase: String)(configure: RecordBuilder => Unit = _ => ()): VcrServer =
    val b = Vcr.record(tapePath, upstreamBase)
    configure(b)
    b.start()
