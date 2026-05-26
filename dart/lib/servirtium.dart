/// Servirtium for Dart (and Flutter): record/replay for HTTP service tests in
/// the [Servirtium](https://servirtium.dev) markdown tape format.
///
/// A thin `dart:ffi` wrapper over the Aether VCR core (`libservirtium_vcr.so`).
/// Point your system-under-test at [VcrServer.baseUrl]; in playback it replays
/// a recorded tape with no network, in record it forwards to the real service
/// and writes the tape.
///
/// ```dart
/// import 'package:servirtium/servirtium.dart';
///
/// final vcr = Vcr.playback('tapes/climate_api.md').port(0).start();
/// // ... drive the SUT against vcr.baseUrl ...
/// vcr.close();
/// ```
library;

export 'src/vcr.dart' show Vcr, PlaybackBuilder, RecordBuilder, VcrServer, VcrField, VcrOutcome, VcrException;
