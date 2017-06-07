# danirod's .zshrc file
# These settings power my terminal.

# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="solus"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="yyyy-mm-dd"
export ZSH_TMUX_AUTOSTART=false
plugins=(git sudo command-not-found node npm systemd ssh-agent)
source $ZSH/oh-my-zsh.sh

# Home settings
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre"
export JDK_HOME="/usr/lib/jvm/java-8-oracle"
export ANDROID_HOME="/opt/android/sdk"
export GRADLE_HOME="/usr/share/gradle"

export GOPATH="$HOME/Projects/langs/golang"
# Set up PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH="$JAVA_HOME/bin:$JDK_HOME/bin:$PATH"

export LANG=en_US.UTF-8
export EDITOR=vim

# Alias
alias open=xdg-open
# Some commands
clear
