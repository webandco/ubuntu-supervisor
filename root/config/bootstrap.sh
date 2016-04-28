#!/bin/sh

set -e
set -u

echo "bootstraping environment..."

mkdir -p /data/conf /data/run /data/logs
chmod 711 /data/conf /data/run /data/logs

echo "start supervisor"
/usr/bin/supervisord