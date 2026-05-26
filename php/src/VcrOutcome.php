<?php

declare(strict_types=1);

namespace Servirtium;

/**
 * Per-dispatch outcome. Drain after a request to assert what the dispatcher
 * decided.
 */
enum VcrOutcome: int
{
    case Ok = 0;
    case PathOrMethodDiff = 1;
    case HeaderMissing = 2;
    case HeaderValueDiff = 3;
    case HeaderUnexpected = 4;
    case TapeExhausted = 5;
    case BodyDiff = 6;
    case RecordError = 7;
}
