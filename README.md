[![GitHub release](https://img.shields.io/github/v/release/colibris-xyz/nextcloud-docker.svg?style=flat)](https://github.com/colibris-xyz/nextcloud-docker/releases/latest)
[![GitHub license](https://img.shields.io/github/license/colibris-xyz/nextcloud-docker)](https://github.com/colibris-xyz/nextcloud-docker/blob/main/LICENSE)

# Nextcloud Docker image for colibris.xyz

Based on the [official fpm image](https://hub.docker.com/_/nextcloud/) (alpine variant), with some changes :

- Use the low-privileged user 'www-data'
- Use supervisor to run the application and the cron job in the same container
- Add more configuration by env variables
