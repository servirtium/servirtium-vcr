<?php

declare(strict_types=1);
namespace Servirtium;

/** @internal Marshals the staged ABI; callbacks run on the calling PHP thread. */
final class Secrets
{
    public static function stage(\FFI\CData $handle, callable $callback, bool $resolving): void
    {
        $lib = Native::lib();
        $check = static function ($pointer): void {
            $error = Native::takeString($pointer);
            if ($error !== '') { throw new VcrException($error); }
        };
        $get = static fn(int $part): string => Native::takeString($lib->aether_vcr_embed_secret_get($handle, $part));
        try {
            $check($lib->aether_vcr_embed_secret_begin($handle, $resolving ? 1 : 0));
            while (($next = $lib->aether_vcr_embed_secret_next($handle)) > 0) {
                $value = $resolving ? $callback($get(2)) : $callback($get(1), new SecretRequest(
                    $get(3), $get(4), $get(5), $get(6), $get(7), $lib->aether_vcr_embed_secret_interaction($handle)));
                if ($value !== null) {
                    if (!is_string($value)) { throw new \TypeError('Secret callbacks must return a string or null'); }
                    $check($lib->aether_vcr_embed_secret_apply($handle, $value));
                }
            }
            if ($next < 0) { throw new VcrException('Secret staging aborted'); }
            $check($lib->aether_vcr_embed_secret_finish($handle));
        } catch (\Throwable $error) {
            $lib->aether_vcr_embed_secret_abort($handle);
            $lib->aether_vcr_embed_stop($handle);
            throw $error;
        }
    }
}
