FROM alpine:3.19

LABEL maintainer="nitaoktaviani"

RUN apk update && apk add --no-cache \
    bash nginx php php-fpm

COPY index.php /var/www/html/
COPY default.conf /etc/nginx/http.d/

EXPOSE 80

CMD php-fpm82 && nginx -g 'daemon off;'
