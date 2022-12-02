# Home mac only
if [[ $OSTYPE == 'darwin'* ]] && [[ $HOST == 'HyDEV' ]]; then
    export PATH=/Users/zh/Library/Python/3.9/bin:$PATH
    export PATH=/usr/local/bin:$PATH
    export PATH=/Users/zh/audio-orchestrator-ffmpeg/bin:$PATH
    export PATH=/Users/zh/Downloads/platform-tools:$PATH
    export GPG_TTY=$(tty)
    
fi

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export SSH_AGENT_PID
fi

