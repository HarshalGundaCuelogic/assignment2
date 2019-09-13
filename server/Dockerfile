#FROM centos:latest
FROM alpine:latest
WORKDIR /serverdata
#RUN apk update
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass

COPY ./1.txt /serverdata
#COPY ./run_server.sh /tmp 
#RUN sh /tmp/run_server.sh
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd restart
#RUN mkdir -m777 /root/.ssh

RUN adduser --disabled-password --gecos "" server
RUN echo server:123456 | chpasswd

#RUN apk add openrc 
#RUN apk add openssh
#RUN rc-status
#RUN touch /run/openrc/softlevel
#RUN ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
#RUN rc-service sshd status
#RUN rc-service sshd stop
#RUN apk add nano
#RUN mkdir -m700 /root/.ssh
#RUN rc-service sshd start
#RUN rc-service sshd restart
#RUN rc-service sshd restart
#RUN cat /root/.ssh/id_rsa.pub > ../key
#COPY ./userlist /tmp/
#COPY ./createuser.sh /usr/sbin/
#RUN chmod u+x /usr/sbin/createuser.sh
#RUN sh /usr/sbin/createuser.sh
#RUN echo "123" | adduser kratik
#RUN yum -y update && yum clean all
#RUN yum install -y openssh-server