docker-compose.yml
```
version: '3'
services:
  transmission:
    image: faintghost/transmission-twc:latest
    container_name: transmission
    network_mode: host
    restart: always
    volumes:
      - /path/to/downloads:/downloads
      - /path/to/config:/config
      - /path/to/torrents:/wawtch
    environment:
      - TZ=Europe/Berlin
      - GUID=0
      - PUID=0
```
default username and password: admin
