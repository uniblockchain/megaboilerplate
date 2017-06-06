#!/bin/bash -e

set -e

export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -n "${MANUALRUN}" ]; then
  echo "entering manual run mode"
  echo "docker exec -ti mega_app bash"
  sleep 10000000
else
  npm run start
fi