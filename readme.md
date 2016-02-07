# mumble-server (murmur)

A docker container for Mumble Server which can be configured with environment variables

| ENV Value | Usage                                 |
| --------- | ------------------------------------- |
| `SUPW`    | The superuser password to be injected |
| `ROOMS`   | A comma separate list of rooms        |

All together:

```bash
docker run -d \
  -p 64738:64738/tcp \ 
  -p 64738:64738/udp \
  -e ROOMS="general,gaming" \ 
  -e SUPW=password \
  --name=murmur \
  chuyskywalker/murmur
```

For better security (so the pasword doesn't show up on the `ps`) you should toss the `ROOMS` and `SUPW` into a `.env` file:

```
# .env
SUPW=password
ROOMS=general,gaming
```

.
.