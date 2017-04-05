#!/bin/sh

set -e

tar -cvf archive.tar *

docker build -f dockerfiles/centos-6 -t sensu-build-centos-6 .
docker build -f dockerfiles/centos-7 -t sensu-build-centos-7 .

env="-e SENSU_VERSION=${SENSU_VERSION-0.28.4} -e BUILD_NUMBER=${BUILD_NUMBER-1.phys.1}"
vol="-v ${1-/tmp/assets}:/tmp/assets"
run='./sensu-build/docker_run.sh'

docker run --rm $env $vol sensu-build-centos-6 $run
docker run --rm $env $vol sensu-build-centos-7 $run
