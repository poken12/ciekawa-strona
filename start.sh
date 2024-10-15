#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ Właczanie PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Właczanie Nginx..."
echo "✓ Poprawnie uruchomiono"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
