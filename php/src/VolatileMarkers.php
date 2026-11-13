<?php

declare(strict_types=1);

namespace Servirtium;

/** How placeholders and tokens are written: `{{name}}`, `${name}`, `[[name]]`. */
enum VolatileMarkers: int
{
    case Mustache = 0;
    case DollarCurly = 1;
    case Wikilink = 2;
}
