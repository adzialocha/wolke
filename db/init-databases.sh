#!/bin/bash

set -e

DATABASES=(
  $POSTGRES_DATABASE_NEXTCLOUD
  $POSTGRES_DATABASE_ONLYOFFICE
)

create_database () {
  DB_NAME=$1

  echo "Create postgres database '$DB_NAME'"

  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE $DB_NAME;
    GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $POSTGRES_USER;
EOSQL
}

# Create all necessary databases
for db in "${DATABASES[@]}"
do
  create_database $db
done
