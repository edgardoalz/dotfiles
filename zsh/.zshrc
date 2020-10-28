# danirod's .zshrc file
# These settings power my terminal.

# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="solus"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="yyyy-mm-dd"
export ZSH_TMUX_AUTOSTART=false
plugins=(kubectl git sudo command-not-found node npm systemd ssh-agent)
source $ZSH/oh-my-zsh.sh

# Home settings
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export JDK_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="/opt/android/sdk"
export GRADLE_HOME="/opt/gradle/gradle-5.5.1"
export PATH="${GRADLE_HOME}/bin:${PATH}"
export NPM_PATH="$HOME/.npm-global"
export MY_SCRIPTS="$HOME/.bin"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FLUTTER_HOME="/opt/flutter"

export GOPATH="$HOME/Projects/langs/golang"
# Set up PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH="$JAVA_HOME/bin:$JDK_HOME/bin:$ANDROID_HOME/bin:$ANDROID_HOME/tools/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$NPM_PATH/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$GRADLE_HOME/bin:$PATH"
export PATH="$PATH:/$FLUTTER_HOME/bin"
export PATH="$PATH:$MY_SCRIPTS"

export LANG=en_US.UTF-8
export EDITOR=vim

# Alias
alias ip='ip --color=auto'
alias open=xdg-open
alias df='df -h | egrep -v /dev/loop'
# Some commands
clear

export GPG_TTY=$(tty)
export PATH=/home/edgardo/.tiup/bin:$PATH

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
