#!/bin/bash
set -euo pipefail

echo "Going to wake up your PC"

if [ -z "${MAC:-}" ]; then
  echo "Error: MAC environment variable is not set." >&2
  echo "Set MAC to the target machine's MAC address before starting the container." >&2
  exit 1
fi

etherwake -i eth0 "$MAC"
tail -f /dev/null
