#!/bin/bash
echo "Going to wake up your PC"
etherwake -i eth0 $MAC
tail -f /dev/null