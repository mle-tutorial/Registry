FROM python:3.10.8-slim

RUN pip install --upgrade pip &&\
    pip install --no-cache-dir mlflow==2.0.1 psycopg2-binary==2.9.5 boto3==1.24.46

COPY run_mlflow_without_minio.sh /usr/src/run_mlflow_without_minio.sh

RUN chmod u+x /usr/src/run_mlflow_without_minio.sh

RUN adduser -u 5678 --disabled-password --gecos "" appuser && \
    chown -R appuser /usr/src

USER appuser

WORKDIR /usr/src

CMD ["/usr/src/run_mlflow_without_minio.sh"]