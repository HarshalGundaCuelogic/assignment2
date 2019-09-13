#!/bin/sh


echo "Creating a volume for client...";
sudo docker volume create clientvol;
echo "Volume for client gets created successfully...";

sudo docker build -t clientimage:1.0 ./client/.;

sudo docker run -it --name=ClientContainer --mount source=clientvol,target=/clientdata --network=mynetwork1 --ip=172.168.11.43 --user=root clientimage:1.0 /bin/sh;

#echo "Copying file frome server container"
#sudo docker cp ./server/id_rsa ServerContainer:/root/.ssh/
#sudo docker cp ./server/id_rsa.pub ServerContainer:/root/.ssh/

#echo "Copying file frome client container"
#sudo docker cp ./client/authorized_keys ClientContainer:/root/.ssh/

#echo "y" rm id_rsa.pub authorized_keys

#echo "exec into client container"
#sudo docker exec -it ClientContainer sh
