FROM ubuntu:20.04

RUN apt update && apt install -y openssh-server
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN useradd -m -s /bin/bash jane
RUN echo "jane:password" | chpasswd

EXPOSE 22

RUN service ssh start

ENTRYPOINT ["tail", "-f", "/dev/null"]
