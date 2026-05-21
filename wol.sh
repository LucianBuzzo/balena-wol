#!/bin/bash
set -euo pipefail

echo "Going to wake up your PC"

if [ -z "${MAC:-}" ]; then
  echo "Error: MAC environment variable is not set." >&2
  echo "Set MAC to the target machine's MAC address before starting the container." >&2
  exit 1
fi

if ! [[ "$MAC" =~ ^([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}$ ]]; then
  echo "Error: MAC must be in format aa:bb:cc:dd:ee:ff" >&2
  exit 1
fi

NET_IFACE="${NET_IFACE:-eth0}"

echo "Sending WoL packet to $MAC via interface $NET_IFACE"
etherwake -i "$NET_IFACE" "$MAC"
tail -f /dev/null
