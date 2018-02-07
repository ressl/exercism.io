#!/usr/bin/env bash

# debug
# set -x

declare -r INPUT=$1

two_fer() {
  echo "One for ${INPUT:-you}, one for me."
}

two_fer
