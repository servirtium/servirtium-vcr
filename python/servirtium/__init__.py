"""Servirtium for Python — record/replay HTTP service tests in the Servirtium
markdown tape format.

Since 2.0 this is a thin Python (ctypes) wrapper over the in-repo VCR core; all
record/replay machinery lives in and is maintained as the in-repo
``core/vcr.ae`` engine (built on Aether stdlib primitives). See README.md /
docs/.

    import servirtium

    with servirtium.playback("tapes/my_api.md").port(0).start() as vcr:
        # point your HTTP client at vcr.base_url ...
        assert vcr.last_kind is servirtium.Outcome.OK
"""

from ._vcr import (
    Field,
    Outcome,
    PlaybackBuilder,
    RecordBuilder,
    VcrError,
    VcrServer,
    playback,
    record,
)

__all__ = [
    "playback",
    "record",
    "VcrServer",
    "PlaybackBuilder",
    "RecordBuilder",
    "Field",
    "Outcome",
    "VcrError",
]

__version__ = "2.0.0"
