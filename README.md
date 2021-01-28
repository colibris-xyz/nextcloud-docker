# Nextcloud Docker image for colibris.xyz

Based on the [official fpm image](https://hub.docker.com/_/nextcloud/) (alpine variant), with some changes :

- Use supervisor to run the application and the cron job in the same container
