#!/bin/bash
TAG=pshcyrill/nicos:test
BIN=

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

PATH_TO_INSTRUMENT=${DIR}/nicos_pnpi
xhost +local:
docker run -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ${PATH_TO_INSTRUMENT}:/usr/src/nicos/nicos_pnpi --network host -ti ${TAG} ${BIN}
