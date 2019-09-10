#!/bin/sh

echo "Creating a volume for client...";
sudo docker volume create clientvol;
echo "Volume for client gets created successfully...";

sudo docker build -t clientimage:1.0 ./client/.;
sudo docker run -dp 8089:80 --name=ClientContainer --mount source=clientvol,target=/clientdata --network=mynetwork1 --ip=172.168.11.43 clientimage:1.0 /bin/bash;
