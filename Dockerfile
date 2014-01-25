FROM moul/sshd
MAINTAINER Manfred Touron m@42.am

RUN apt-get install -y tmux && \
    apt-get clean

CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22

ADD bashrc /root/.bashrc
ADD command /root/command

