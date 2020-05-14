FROM postgres:latest

ENV POSTGRES_PASSWORD admin_pass
ENV TZ "CET"

COPY schemas/* /schemas/
COPY init/* /docker-entrypoint-initdb.d/
