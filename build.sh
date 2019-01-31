#!/bin/bash

source "common.sh"

# Export environment variables
export_env

# Update and build docker images
cat compose.yml | envsubst | docker-compose -f - -p $name build --pull
