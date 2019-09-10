#!/bin/sh

sh ./server/fileserver.sh && sh ./client/fileclient.sh;
#sudo docker run -dp 8088:80 --name=ServerContainer --mount source=servervol,target=/serverdata --network=mynetwork1 --ip=172.168.11.42 serverimage:1.0
#sudo docker run -dp 8089:80 --name=ClientContainer --mount source=clientvol,target=/clientdata --network=mynetwork1 --ip=172.168.11.43 clientimage:1.0
