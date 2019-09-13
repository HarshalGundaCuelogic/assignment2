FROM alpine:latest
WORKDIR /clientdata
#RUN apk update
RUN apk add openrc 
RUN apk add openssh
#COPY ./run_client.sh /tmp 
#RUN sh /tmp/run_client.sh
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd restart
#RUN mkdir -m777 /root/.ssh
#RUN apk add openrc && apk add openssh && rc-status && touch /run/openrc/softlevel && rc-service sshd status && rc-service sshd restart && mkdir -m700 /root/.ssh/ && rc-service sshd restart