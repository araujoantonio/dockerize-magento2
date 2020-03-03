#!/bin/sh
#
# Set the correct file permissions for Magento 2

while true;
do
  chgrp -R 33 /var/www
  chmod -R g+rs /var/www

  chmod -R ug+rws /var/www/html/magento/pub/errors
  chmod -R ug+rws /var/www/html/magento/pub/static
  chmod -R ug+rws /var/www/html/magento/pub/media
  chmod -R ug+rws /var/www/html/magento/app/etc
  chmod -R ug+rws /var/www/html/magento/var

  chmod ug+x /var/www/html/magento/bin/magento

  sleep 60
done
