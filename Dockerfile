FROM moul/sshd
MAINTAINER Manfred Touron m@42.am

RUN apt-get install -y tmux supervisor && \
    apt-get clean

ADD bashrc /root/.bashrc
ADD command /root/command
ADD run /usr/bin/run-docker-tmux
ADD sshd.conf /etc/supervisor/conf.d/sshd.conf

CMD ["/usr/bin/run-docker-tmux"]
