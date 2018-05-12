# danirod's .zshrc file
# These settings power my terminal.

# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="solus"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="yyyy-mm-dd"
export ZSH_TMUX_AUTOSTART=false
plugins=(git sudo command-not-found node npm systemd ssh-agent)
source $ZSH/oh-my-zsh.sh

# Home settings
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JDK_HOME="/usr/lib/jvm/java-8-oracle"
export ANDROID_HOME="/opt/android/sdk"
export GRADLE_HOME="/usr/share/gradle"
export NPM_PATH="$HOME/.npm-global"

export GOPATH="$HOME/Projects/langs/golang"
# Set up PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH="$JAVA_HOME/bin:$JDK_HOME/bin:$ANDROID_HOME/bin:$ANDROID_HOME/tools/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$NPM_PATH/bin:$PATH"

export LANG=en_US.UTF-8
export EDITOR=vim

# Alias
alias open=xdg-open
alias git-branch='git branch | 
    while read -r line; do 
        description=$(git config branch.${line/\* /}.description)
        if [ -n "$description" ]; then
            echo "\033[33m[$line] \033[0m$description"
        else
            echo "\033[33m[$line] \033[0mNo description" 
        fi
    done;'
    #done; | echo -ne | column -t' 
# Some commands
clear

###-tns-completion-start-###
if [ -f /home/edgardo/.tnsrc ]; then 
    source /home/edgardo/.tnsrc 
fi
###-tns-completion-end-###
export GPG_TTY=$(tty)
