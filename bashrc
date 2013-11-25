if [ "$PS1" != "" -a "${STARTED_TMUX:-x}" = x -a "${SSH_TTY:-x}" != x ]
then
    STARTED_TMUX=1; export STARTED_TMUX
    sleep 1
    (
        (
            tmux has-session -t remote && tmux attach-session -t remote
        ) || (
            tmux new-session -s remote /root/command
        )
    ) && exit 0
    echo "tmux failed to start"
fi
