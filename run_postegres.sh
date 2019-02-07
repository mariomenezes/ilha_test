# Create the PostgreSQL database (enter password nyaruka when prompted):
#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    "GRANT ALL PRIVILEGES ON DATABASE casepro to casepro;"
    "CREATE EXTENSION hstore;"
EOSQL
