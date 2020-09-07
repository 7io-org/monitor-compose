#! /bin/bash -eu

PROJ_PATH=$(readlink -f $(cd $(dirname $(readlink -f $0)) && pwd))
cd ${PROJ_PATH}/..

set -x
docker-compose up -d crate-01 crate-02 crate-03 crate-adapter
