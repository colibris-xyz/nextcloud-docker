<?php
$CONFIG = array (
  'default_phone_region' => getenv('DEFAULT_PHONE_REGION'),
  'trashbin_retention_obligation' => getenv('TRASHBIN_RETENTION_OBLIGATION') ?: 'auto'
);
