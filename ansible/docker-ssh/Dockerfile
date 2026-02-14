FROM ubuntu:20.04

RUN apt update && apt install -y openssh-server

RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#SyslogFacility AUTH/SyslogFacility AUTH/' /etc/ssh/sshd_config
RUN sed -i 's/#LogLevel INFO/LogLevel VERBOSE/' /etc/ssh/sshd_config

RUN useradd -m -s /bin/bash jane
RUN echo "jane:password" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
# https://stackoverflow.com/questions/25135897/how-to-automatically-start-a-service-when-running-a-docker-container/32179054#32179054