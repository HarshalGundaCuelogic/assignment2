FROM alpine:latest
WORKDIR /clientdata
RUN apk update
RUN apk add openssh
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd restart
RUN mkdir /root/.shh
CMD touch /root/.shh/authorized_keys