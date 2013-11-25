FROM moul/sshd
MAINTAINER Manfred Touron m@42.am

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main universe" >> /etc/apt/sources.list
RUN apt-get -q -y update
RUN apt-get install -y tmux

ADD bashrc /root/.bashrc
ADD command /root/command
RUN chmod +x /root/command

CMD ["/usr/sbin/sshd", "-D"]
