#!/bin/bash

REPOSITORY="pshcyrill"
TAG="test"
DIRS="nicos nicos-cache nicos-daemon nicos-elog nicos-poller nicos-watchdog"

for dir in $DIRS
do
    echo "for" $dir
    cd $dir
    echo docker build . -t ${REPOSITORY}/$dir:$TAG
    docker build . -t ${REPOSITORY}/$dir:$TAG
    echo docker push ${REPOSITORY}/$dir:$TAG
    docker push ${REPOSITORY}/$dir:$TAG
    cd ..
done
