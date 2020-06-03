### Install
I. replace **/DOWNLOAD_DIR** and **/CONFIG_DIR** for save data, and **YOUR_RPC_SECRET** for security. Run command below  
```
sudo docker run -d \
--name aria2-with-webui \
-p 6800:6800 \
-p 6801:80 \
-v /DOWNLOAD_DIR:/downloads \
-v /CONFIG_DIR:/config \
-e RPC_SECRET=YOUR_RPC_SECRET \
faintghost/aria2-ariang-ui
```

II. Open `http://serverip:6801/` for AriaNg

### Build:  
`sudo docker build -f Dockerfile -t faintghost/aria2-ariang-ui`  

### Link:  
https://github.com/aria2/aria2  
https://github.com/mayswind/AriaNg