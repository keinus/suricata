#!/bin/bash
/usr/sbin/crond -n &
/docker-entrypoint.sh --af-packet
