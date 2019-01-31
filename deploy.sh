#!/bin/bash

source "common.sh"

# Export environment variables
export_env

# Populate variables and deploy it!
cat compose.yml | envsubst | docker-compose -f - -p $name up -d
