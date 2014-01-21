FROM moul/sshd
MAINTAINER Manfred Touron m@42.am

RUN apt-get install -y tmux && apt-get clean

ADD bashrc /root/.bashrc
ADD command /root/command
RUN chmod +x /root/command

CMD ["/usr/sbin/sshd", "-D"]

EXPOSE 22
