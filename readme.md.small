# mumble-server (murmur)

A docker container for Mumble Server configured with environment variables

```
SUPW=superuserpassword
ROOMS=general,gaming,music
```

All together:

```bash
# checkout/clone && cd
docker build -t murmur .
docker run -d --name=murmur \
  -p 64738:64738/tcp -p 64738:64738/udp \
  -e ROOMS="general,gaming" -e SUPW=password \
  murmur
```
