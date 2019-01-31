#!/bin/bash

# Configuration
name=wolke_
env_file=.env

# System check

if ! [ -x "$(command -v docker)" ]; then
  echo "Error: docker is not installed" >&2
  exit 1
fi

if ! [ -x "$(command -v docker-compose)" ]; then
  echo "Error: docker-compose is not installed" >&2
  exit 1
fi

# Method to export environment variables from a file
export_env() {
  if ! [ -f "$env_file" ]; then
    echo "Error: $env_file not found" >&2
    exit 1
  fi

  set -a
  source $env_file
}
