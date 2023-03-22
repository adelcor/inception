#!/bin/sh
#mkdir -p /var/www/html/
#echo "Me estoy ejecutando estoy harto ya"
#while ! nc -z mariadb 3306; do
#  sleep 1
#done
cd /var/www/html
wp core download --locale=es_ES --allow-root
wp --path=/var/www/html config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --locale=es_ES --allow-root --skip-check
wp core install --path=/var/www/html  --url=${DOMAIN_NAME} --title="Hello 42Urduliz" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="adel-cor@student.42urduliz.com" --skip-email --allow-root
wp --path=/var/www/html theme install https://downloads.wordpress.org/theme/elevated-lite.1.0.2.zip --allow-root
wp --path=/var/www/html theme activate elevated-lite --allow-root
