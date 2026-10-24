<?php

declare(strict_types=1);
namespace Servirtium;

final readonly class SecretRequest
{
    public function __construct(
        public string $method, public string $path, public string $location,
        public string $format, public string $fieldPath, public int $interaction,
    ) {}
}
