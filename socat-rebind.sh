#!/bin/bash
export TARGET_IP=10.100.90.195;
sudo apt-get --assume-yes install socat psmisc && fuser -k 26337/tcp && setsid socat TCP-LISTEN:26337,fork TCP:$TARGET_IP:26337 && fuser -k 13337/tcp && setsid socat TCP-LISTEN:13337,fork TCP:$TARGET_IP:13337