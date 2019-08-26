# Docker images

- `develop`: general-purpose image for developing. Other images that depends on the 
             develop image are (the ones named as a programming language)
    - `cpp`
    - `csharp`
    - `common-lisp`
    - ...
- `exercism`: a docker image to set up the [Exercism](https://exercism.io) utility.
- `plantuml`: to use PlantUML.

## Other useful images

### LibreOffice image

- Pull the image:
```
docker pull woahbase/alpine-libreoffice:x86_64
```
- Run
```
docker run --rm -it \
  --name docker_libreoffice --hostname libreoffice \
  -e PGID=1000 -e PUID=1000 \
  -c 512 -m 2096m \
  -e DISPLAY=unix:0 \
  -v /usr/share/fonts:/usr/share/fonts:ro \
  -v data:/home/alpine \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  woahbase/alpine-libreoffice:x86_64
```

Docs:
- [LibreOffice docker image](https://hub.docker.com/r/woahbase/alpine-libreoffice/)




