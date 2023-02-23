#!/bin/bash

docker build -f mlflow_with_minio.Dockerfile -t mlflow-minio ./
docker run \
    -d \
    --name mlflow-minio \
    --env-file=.env \
    -p 5000:5000 \
    mlflow-minio:latest

docker build -f prefect_agent.Dockerfile -t prefect-agent:latest ./
docker run \
    -d \
    --name prefect-agent \
    --env-file=.env \
    prefect-agent:latest
