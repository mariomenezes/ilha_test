#!/bin/bash

# Immediately exits if any error occurs during the script
# execution. If not set, an error could occur and the
# script would continue its execution.
set -e
  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
     GRANT ALL PRIVILEGES ON DATABASE casepro to casepro;
     CREATE EXTENSION hstore;
EOSQL

