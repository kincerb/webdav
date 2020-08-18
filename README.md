# webdav
This project is my attempt to host a personal webdav server to sync my Joplin notes.

## Running container
```bash
docker run -d --name webdav --restart always -p 443:443 -v /etc/letsencrypt:/etc/letsencrypt:ro -v
/etc/webdav.creds:/etc/nginx/.credentials.list:ro kincerb/webdav:latest
```
