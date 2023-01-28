#!/bin/bash

set -e


if [ -z $MLFLOW_DB_URL ]; then
  echo >&2 "MLFLOW_DB_URL must be set"
  exit 1
fi

mlflow server \
    --host 0.0.0.0 \
    --backend-store-uri $MLFLOW_DB_URL \
    --default-artifact-root ./mlflow_artifacts \
    --gunicorn-opts "--log-level debug"
