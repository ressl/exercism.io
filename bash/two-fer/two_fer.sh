#!/usr/bin/env bash

# debug
# set -x

declare -r INPUT=$1

two_fer() {
  if [[ -z ${INPUT} ]]; then
    echo 'One for you, one for me.'
  else
    echo "One for ${INPUT}, one for me."
  fi
}

two_fer
