<?php

declare(strict_types=1);

namespace Servirtium;

use RuntimeException;

/**
 * Raised when the VCR fails to start, a mutation is rejected, or a
 * record-mode flush detects drift.
 */
final class VcrException extends RuntimeException
{
}
