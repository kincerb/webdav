FROM nginx:1.29
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf
