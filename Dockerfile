FROM alpine:3.4
MAINTAINER dwi.nurhadi17@gmail.com
RUN apk update && apk upgrade && \
    apk add tzdata wget apache2 vim \
    php5-apache2 \
    php5-mysqli \
    php5 \
    php5-cli \
    php5-fpm \
    php5-imap \
    php5-gettext \
    php5-gd \
    php5-curl \
    php5-ldap \
    php5-xml \
    php5-dom \
    php5-phar \
    php5-json \
    php5-mysql &&  \
    rm -rf /var/cache/apk/*

ENV OSTICKET_VERSION 1.14.3
ENV TIMEZONE Asia/Jakarta
ENV PHP_MEMORY_LIMIT    512M
ENV MAX_UPLOAD          50M
ENV PHP_MAX_FILE_UPLOAD 200
ENV PHP_MAX_POST        100M

ADD docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod 755 /root/docker-entrypoint.sh
EXPOSE 80

ENTRYPOINT ["sh", "/root/docker-entrypoint.sh"]
CMD ["httpd", "-DFOREGROUND"]
