FROM ubuntu:26.04
# COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf

RUN apt-get update && \
  apt-get install -y nginx-full=1.28.3-2ubuntu1.1 && \
  rm -rf /var/lib/apt/lists/*

CMD ["nginx", "-g", "daemon off;"]
