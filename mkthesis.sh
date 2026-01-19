#!/usr/bin/env bash

docker run --rm -it --platform linux/amd64 -v "$PWD:/data" -w /data -u "$(id -u):$(id -g)" kpituke/latex make pdf

