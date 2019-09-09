#!/bin/sh

echo "Creating an user-defined bridge network...`\n`"
sudo docker network create --driver bridge mynetwork1 --subnet="172.168.11.40/30"
echo "Network created successfully`\n`"

echo "Creating a volume for server...`\n`"
sudo docker volume create serverdata
echo "Volume for server gets created successfully`\n`"
