#!/bin/bash
set -e

# Remove server.pid if exists
rm -f /app/tmp/pids/server.pid

# Run the given command
exec "$@"
