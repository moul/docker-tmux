FROM moul/sshd
MAINTAINER Manfred Touron m@42.am

RUN apt-get update && \
    apt-get install -y tmux supervisor mosh && \
    apt-get clean

ADD bashrc /root/.bashrc
ADD command /root/command
ADD run /usr/bin/run-docker-tmux
ADD sshd.conf /etc/supervisor/conf.d/sshd.conf

CMD ["/usr/bin/run-docker-tmux"]

RUN touch /usr/bin/boot-docker-tmux
#VOLUME ["/usr/bin/boot-docker-tmux"]
