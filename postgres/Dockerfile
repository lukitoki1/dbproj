FROM postgres:latest

ENV POSTGRES_PASSWORD admin_pass
ENV TZ "CET"
COPY schema.sql /docker-entrypoint-initdb.d/
