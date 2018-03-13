FROM httpd:2.4.29-alpine
MAINTAINER Liam Hiscock


ENV APP_ROOT="/var/www/html" \
    APACHE_DIR="/etc/apache2"

COPY templates /etc/gotpl/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["sudo", "httpd", "-DFOREGROUND"]