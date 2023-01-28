FROM python:3.10.8-slim

COPY requirements.txt .

RUN pip install --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt

COPY run_prefect_agent.sh /usr/src/run_prefect_agent.sh

RUN chmod u+x /usr/src/run_prefect_agent.sh

RUN adduser -u 5678 --disabled-password --gecos "" appuser && \
    chown -R appuser /usr/src

USER appuser

WORKDIR /usr/src

ENTRYPOINT ["/usr/src/run_prefect_agent.sh"]
