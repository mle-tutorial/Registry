#!/bin/bash

docker run \
   -d \
   --name minio \
   -v ~/docker_volume/minio/data:/data \
   -e MINIO_ACCESS_KEY=test_access_key \
   -e MINIO_SECRET_KEY=test_secret_key \
   -e MINIO_ROOT_USER=test_user_id \
   -e MINIO_ROOT_PASSWORD=test_user_password \
   -p 9000:9000 \
   -p 9090:9090 \
   quay.io/minio/minio server /data --console-address ":9090"
