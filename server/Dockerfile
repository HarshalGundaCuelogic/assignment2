#FROM centos:latest
FROM alpine:latest
WORKDIR /serverdata
COPY ./1.txt /serverdata
RUN apk update
RUN apk add openssh
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd restart
COPY ./userlist /tmp/
COPY ./createuser.sh /usr/sbin/
RUN apk add nano
RUN chmod u+x /usr/sbin/createuser.sh
RUN sh /usr/sbin/createuser.sh
#RUN echo "123" | adduser kratik
#RUN yum -y update && yum clean all
#RUN yum install -y openssh-server