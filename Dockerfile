FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y nginx-full && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/www/webdav && \
    mkdir -p /var/www/tmp && \
    chown -R www-data:www-data /var/www/webdav /var/www/tmp
COPY nginx/etc/nginx.conf /etc/nginx/nginx.conf
COPY nginx/etc/conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf
EXPOSE 80
EXPOSE 443
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
