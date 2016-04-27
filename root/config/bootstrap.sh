#!/bin/sh

set -e
set -u

echo "bootstraping environment..."
# Create directories for supervisor's UNIX socket and logs (which might be missing
# as container might start with /data mounted from another data-container).

mkdir -p /data/conf /data/run /data/logs
chmod 711 /data/conf /data/run /data/logs

# chown -R www-data:www-data /var/www
# chown -R www-data:www-data /var/www
# chmod -R 775 /var/www

echo "start supervisor"
more /etc/supervisor/conf.d
/etc/init.d/supervisor restart