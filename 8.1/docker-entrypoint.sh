#!/bin/bash
set -e
mkdir -p /var/www/html/owncloud
cd /var/www/html/owncloud
if [ ! -e '/var/www/html/owncloud/version.php' ]; then
	tar cf - --one-file-system -C /usr/src/owncloud . | tar xf -
	chown -R www-data /var/www/html
fi

exec "$@"
