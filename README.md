# webdav

This project is my attempt to host a personal webdav server to sync my Joplin notes.

## Running container

```bash
docker run -d --name webdav --restart always -p 443:443 -v /etc/nucoder:/etc/nucoder:ro kincerb/webdav:latest
```
