#!/bin/bash

if [ ! -f .env ]
then
  echo "Error: .env not found"
  exit
fi

# Delete all containers with a `wolke_` prefix
docker rm --stop --force `docker ps -aq -f name=wolke_*`

# Export environment variables
set -a
source .env

# Populate variables and deploy it!
cat compose.yml | envsubst | docker-compose -f - -p wolke_ up -d
