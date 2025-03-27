#!/bin/bash
# Скрипт для инициализации базы данных для приложения.

set -e

echo run init script

echo run sql script
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/sql/init.sql