#!/bin/bash
TAG=nicos:latest
BIN=
PATH_TO_INSTRUMENT=/data/Soft/NICOS/docker/nicos_pnpi
xhost +local:
docker run -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ${PATH_TO_INSTRUMENT}:/usr/src/nicos/nicos_pnpi --network host -ti ${TAG} ${BIN}
