### Install
I. replace **/DOWNLOAD_DIR** and **/CONFIG_DIR** for save data, and **YOUR_RPC_SECRET** for security. Run command below  
```
sudo docker run -d \
--name aria2 \
-p 6800:6800 \
-p 6801:80 \
-v /DOWNLOAD_DIR:/downloads \
-v /CONFIG_DIR:/config \
-e RPC_SECRET=YOUR_RPC_SECRET \
faintghost/aria2-ariang-ui
```
or
```
version: '3'
services:
  aria2:
    image: faintghost/aria2-ariang-ui
    container_name: aria2
    restart: always
    ports:
      - 6800:6800
      - 6801:80
      - 6888:6888
      - 6888:6888/udp
    volumes:
      - ./config:/config
      - /volume1/downloads:/downloads
    environment:
      - TZ=Europe/Berlin
      - RPC_SECRET=009812
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

II. Open `http://serverip:6801/` for AriaNg

### Build:  
`sudo docker build -f Dockerfile -t faintghost/aria2-ariang-ui`  

### Link:  
https://github.com/aria2/aria2  
https://github.com/mayswind/AriaNg