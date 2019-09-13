FROM alpine:latest
WORKDIR /clientdata
COPY ./run_client.sh /tmp 
RUN sh /tmp/run_client.sh
#RUN apk add openrc && apk add openssh && rc-status && touch /run/openrc/softlevel && rc-service sshd status && rc-service sshd restart && mkdir -m700 /root/.ssh/ && rc-service sshd restart