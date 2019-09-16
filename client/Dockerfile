FROM alpine:latest

COPY ./run_client.sh /home
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel
ENTRYPOINT ["/bin/sh","/home/run_client.sh"]
WORKDIR /clientdata

#RUN apk update
#RUN mkdir -m777 /root/.ssh
#RUN apk add openrc && apk add openssh && rc-status && touch /run/openrc/softlevel && rc-service sshd status && rc-service sshd restart && mkdir -m700 /root/.ssh/ && rc-service sshd restart
#RUN rc-service sshd start
#RUN rc-service sshd status