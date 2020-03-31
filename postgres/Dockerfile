FROM postgres:latest

ENV POSTGRES_PASSWORD admin_pass
COPY schema.sql /docker-entrypoint-initdb.d/
