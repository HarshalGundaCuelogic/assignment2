
FROM alpine:latest
WORKDIR /serverdata

COPY ./1.txt /serverdata
COPY ./run_server.sh /home
RUN md5sum 1.txt > checksum.md5
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel

ENTRYPOINT ["/bin/sh","/home/run_server.sh"]

RUN adduser --disabled-password --gecos "" alpineserver
RUN echo alpineserver:harshal | chpasswd


#FROM centos:latest
#RUN apk update
#RUN rc-service sshd start
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