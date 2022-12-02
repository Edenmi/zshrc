# Home mac only
if [[ $OSTYPE == 'darwin'* ]] && [[ $HOST == 'HyDEV' ]]; then
    # Minecraft
    export MC_DIR="/Volumes/External/Minecraft"
    alias minecraft="pushd $MC_DIR; java17 -jar $MC_DIR/HMCL-*.jar; popd"

    # Paths
    export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
    # export PATH="/Volumes/MacData/SageMath:$PATH"
    export PATH="$PATH:/Users/zh/.gem/ruby/2.6.0/bin" # https://stackoverflow.com/a/53388305/7346633
    export PATH="/Users/zh/Resources/flutter/bin:$PATH"
    export ANDROID_HOME="~/Resources/AndroidSDK"
    export PATH="${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
    export NDK_HOME="/Volumes/MacData/Resources/android-ndk-r21d"
    export NDK_ROOT=$NDK_HOME
    export PATH="/usr/local/opt/node@14/bin:$PATH"

    # Use Python3.9 by default
    
fi

SCR="$HOME/zshrc/scripts"
. $SCR/zshrc.sh

export PATH=/Users/zh/Library/Python/3.9/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/zh/audio-orchestrator-ffmpeg/bin:$PATH
export PATH=/Users/zh/Downloads/platform-tools:$PATH
export GPG_TTY=$(tty)

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export SSH_AGENT_PID
fi