#FROM centos:latest
FROM alpine:latest
WORKDIR /serverdata
COPY ./1.txt /serverdata
#RUN apk update
RUN apk add openssh
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN rc-service sshd stop
#RUN apk add nano
#RUN mkdir -m700 /root/.ssh
RUN rc-service sshd start
RUN rc-service sshd restart
RUN ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
#RUN cat /root/.ssh/id_rsa.pub > ../key
#COPY ./userlist /tmp/
#COPY ./createuser.sh /usr/sbin/
#RUN chmod u+x /usr/sbin/createuser.sh
#RUN sh /usr/sbin/createuser.sh
#RUN echo "123" | adduser kratik
#RUN yum -y update && yum clean all
#RUN yum install -y openssh-server