#! /bin/bash -eu

BACKUP_FILENAME="backup-$(date '+%Y%m%d').tar.gz"

PROJ_PATH=$(readlink -f $(cd $(dirname $(readlink -f $0)) && pwd))
cd ${PROJ_PATH}/..

docker-compose exec prometheus kill -HUP 1
docker-compose exec alertmanager kill -HUP 1
