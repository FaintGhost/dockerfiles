#!/bin/sh
if [ ! -f /config/aria2.conf ]; then
	cp /files/aria2.conf /config/aria2.conf
	if [ $RPC_SECRET ]; then
		echo "rpc-secret=${RPC_SECRET}" >> /config/aria2.conf
	fi
fi

touch /config/aria2.session

darkhttpd /aria2ng --port 80 &
aria2c --conf-path=/config/aria2.conf