<?php
$CONFIG = array (
  'log_type' => getenv('LOG_TYPE') ?: 'file',
  'logfile' => getenv('LOG_FILE') ?: 'nextcloud.log',
  'loglevel' => getenv('LOG_LEVEL') ?: 2,
  'logdateformat' => getenv('LOG_DATEFORMAT') ?: 'c'
);
