<?php
$required = ['gd', 'intl', 'zip', 'imagick'];
$missing = array_values(array_filter($required, fn($e) => !extension_loaded($e)));
if ($missing) {
    http_response_code(500);
    echo "<h1>missing extensions: " . implode(', ', $missing) . "</h1>";
    exit(1);
}
$img = imagecreatetruecolor(1, 1);           // gd
$fmt = new NumberFormatter('en_US', NumberFormatter::DECIMAL);  // intl
echo "<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-php-extensions</h1>";
