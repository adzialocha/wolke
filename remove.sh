#!/bin/bash

source "common.sh"

# Delete all containers with a `wolke_` prefix
active_containers="$(docker ps -aq -f name=$name)"

if [ -z "$active_containers" ]
then
  echo "Error: no active containers found" >&2
  exit 1
else
  echo "Remove active containers:"
  docker rm --force $active_containers
fi
