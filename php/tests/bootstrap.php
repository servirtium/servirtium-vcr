<?php
declare(strict_types=1);
spl_autoload_register(function (string $class): void {
    foreach (['Servirtium\\Tests\\' => __DIR__ . '/', 'Servirtium\\' => __DIR__ . '/../src/'] as $prefix => $base) {
        if (str_starts_with($class, $prefix)) {
            $rel = str_replace('\\', '/', substr($class, strlen($prefix)));
            $file = $base . $rel . '.php';
            if (is_file($file)) { require $file; }
            return;
        }
    }
});
