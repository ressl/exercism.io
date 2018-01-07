#!/bin/bash

# debug
# set -x

LC_ALL=C
declare -ir GIGSEC="$((10**9))"

calcdate() {
  date -u -d "${@} + ${GIGSEC} sec" | xargs
}

calcdate "${@}"