[![Releases](https://img.shields.io/gitlab/v/release/colibris-xyz/nextcloud-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/nextcloud-docker/-/releases)
[![Build status](https://img.shields.io/gitlab/pipeline-status/colibris-xyz/nextcloud-docker?branch=main&gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/nextcloud-docker/-/pipelines)
[![License](https://img.shields.io/gitlab/license/colibris-xyz/nextcloud-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/nextcloud-docker/-/blob/main/LICENSE)

# Nextcloud Docker image for colibris.xyz

Based on the [official fpm image](https://hub.docker.com/_/nextcloud/) (alpine variant), with some changes :

- Use the low-privileged user 'www-data'
- Use supervisor to run the application and the cron job in the same container
- Video and PDF preview enabled by default
- Add more configuration by env variables
