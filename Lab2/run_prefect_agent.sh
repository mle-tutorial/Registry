#!/bin/bash

set -e


if [ -z $PREFECT_API_URL ]; then
  echo >&2 "PREFECT_API_URL must be set"
  exit 1
fi

if [ -z $PREFECT_API_KEY ]; then
  echo >&2 "PREFECT_API_KEY must be set"
  exit 1
fi

prefect agent start -q 'instance1'
