#!/bin/bash

set -e


if [ -z $MLFLOW_DB_URL ]; then
  echo >&2 "MLFLOW_DB_URL must be set"
  exit 1
fi

if [ -z $MLFLOW_S3_ENDPOINT_URL ]; then
  echo >&2 "MLFLOW_S3_ENDPOINT_URL must be set"
  exit 1
fi

if [ -z $AWS_ACCESS_KEY_ID ]; then
  echo >&2 "AWS_ACCESS_KEY_ID must be set"
  exit 1
fi

if [ -z $AWS_SECRET_ACCESS_KEY ]; then
  echo >&2 "AWS_SECRET_ACCESS_KEY must be set"
  exit 1
fi

mlflow server \
    --host 0.0.0.0 \
    --backend-store-uri $MLFLOW_DB_URL \
    --default-artifact-root s3://machine-learning-engineering \
    --gunicorn-opts "--log-level debug"
