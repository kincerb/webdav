FROM nginx:1.29
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/webdav.conf /etc/nginx/conf.d/webdav.conf
EXPOSE 80
EXPOSE 443
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
