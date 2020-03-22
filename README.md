# thumbor_nginx
Dockerized nginx to use with [thumbor](https://github.com/thumbor/thumbor)

## Why? 
Serve thumbor images efficiently using nginx, so that each image only has to be processed once. 

## How?
Docker Compose:

```
git clone https://github.com/yunusabd/thumbor_nginx.git && cd thumbor_nginx
docker-compose up -d
```

##
[Docker Hub](https://hub.docker.com/r/yunusabd/nginx-thumbor)
