#### 使用方法

新建docker-compose.yml文件

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
    labels:
      - com.centurylinklabs.watchtower.enable=true
  utility.watchtower:
    image: containrrr/watchtower:latest
    container_name: watchtower
    network_mode: host
    restart: always
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    environment:
      - TZ=Europe/Berlin
      - WATCHTOWER_CLEANUP=true
      - WATCHTOWER_POLL_INTERVAL=30
      - WATCHTOWER_LABEL_ENABLE=true
```
```docker-compose up -d```

default username and password: **admin**