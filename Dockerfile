FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y nginx-full && \
    rm -rf /var/lib/apt/lists/*
COPY nginx/etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/etc/nginx/conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf

