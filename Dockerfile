FROM tiangolo/meinheld-gunicorn-flask:python3.7-alpine3.8

RUN python -m pip install flask PyYAML ts3

ENV MODULE_NAME=ts-mover-service
ENV WORKERS_PER_CORE=1
ENV WEB_CONCURRENCY=1

COPY ts-mover-service.py ts-mover-service-config.yaml /app/

