<?

$enable_previews = getenv('ENABLE_PREVIEWS');
$enabled_preview_providers = getenv('ENABLED_PREVIEW_PROVIDERS');

$CONFIG['enable_previews'] = strtolower($enable_previews) === 'false' ? false : true;
$CONFIG['enabledPreviewProviders'] = $enabled_preview_providers ? array_filter(array_map(explode(',', $enabled_preview_providers))) : [
    'OC\Preview\MarkDown',
    'OC\Preview\MP3',
    'OC\Preview\TXT',
    'OC\Preview\OpenDocument',
    'OC\Preview\PNG',
    'OC\Preview\JPEG',
    'OC\Preview\GIF',
    'OC\Preview\BMP',
    'OC\Preview\XBitmap',
    'OC\Preview\Krita',
    'OC\Preview\WebP',
    'OC\Preview\Movie',
    'OC\Preview\PDF',
];
