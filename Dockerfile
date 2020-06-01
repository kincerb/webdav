FROM ubuntu:20.04
RUN apt-get update && \
    addgroup --system --gid 101 nginx && \
    adduser --system --disabled-login --ingroup nginx --no-create-home --home /nonexistent --gecos "nginx user" --shell /bin/false --uid 101 nginx && \
    apt-get install -y nginx-full && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/www/webdav && \
    mkdir -p /var/www/tmp && \
    chown -R nginx:nginx /var/www
COPY nginx/etc/nginx.conf /etc/nginx/nginx.conf
COPY nginx/etc/conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf
EXPOSE 80
STOPSIGNAL SIGTERM
# VOLUME /var/www/webdav
# VOLUME /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
