<?php

declare(strict_types=1);

namespace Servirtium;

/**
 * Field selector for redactions / unredactions / header removals.
 *
 * Values mirror the FIELD_* constants in std/http/server/vcr/module.ae.
 */
enum VcrField: int
{
    case Path = 1;
    case ResponseBody = 2;
    case RequestHeaders = 3;
    case RequestBody = 4;
    case ResponseHeaders = 5;
}
