FROM node:lts-alpine
LABEL maintainer="zhang.yaowei@live.com"

RUN npm install -g pm2 \
    && wget https://github.com/ukuq/onepoint/archive/master.zip && unzip master.zip \
    && cd onepoint-master \
    && npm install

WORKDIR /onepoint-master

EXPOSE 8020

CMD ["pm2-runtime", "start", "./bin/index_node.js"]
