#!/bin/sh

# Simple cron script to be able to run it as non-root easily on Alpine

while true; do
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting cron job..."
  php -f /var/www/html/cron.php
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Cron job finished."
  sleep 300;
done;
