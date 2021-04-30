# nginx-cors

A simple nginx proxy that you can put in front of any domain to enable CORS.
Handles the preflight requests that can occur when trying to use `application/json` 
as the request content-type.

This is a fork of [shakyShane/nginx-cors-plus](https://github.com/shakyShane/nginx-cors-plus) which seems abandoned at the moment.
 
## Docker Run

```bash
docker run -p 8080:80 -e TARGET_HOST=https://example.com eledhwen/nginx-cors
```

## Docker Compose

```yaml
version: '2'
services:
  nginx:
    image: eledhwen/nginx-cors
    ports:
      - 8090:80
    environment:
      - TARGET_HOST=https://example.com
```
