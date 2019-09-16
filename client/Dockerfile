FROM alpine:latest
WORKDIR /clientdata
#RUN apk update
COPY ./run_client.sh /tmp 
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd start
RUN rc-service sshd status
RUN sshpass -p "harshal" scp -P 22 -o "StrictHostKeyChecking no" alpineserver@172.168.11.42:/serverdata/1.txt /clientdata
RUN sshpass -p "harshal" scp -P 22 -o "StrictHostKeyChecking no" alpineserver@172.168.11.42:/serverdata/checksum.md5 /clientdata
RUN echo "Files Received Successfully"

CMD ["/bin/sh","run_client.sh"]

#RUN mkdir -m777 /root/.ssh
#RUN apk add openrc && apk add openssh && rc-status && touch /run/openrc/softlevel && rc-service sshd status && rc-service sshd restart && mkdir -m700 /root/.ssh/ && rc-service sshd restart