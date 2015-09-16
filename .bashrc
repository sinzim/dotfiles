export PATH=${PATH}:~/git/android-sdk-mac_86/tools
#export JAVA_HOME=$(/usr/libexec/java_home)
alias targz='tar -pczf'
#easy tar syntax
alias untargz='tar xvfz'
alias untar='tar xvf'
alias cls='clear'
export EDITOR='vim'

# Terminal colours (after installing GNU coreutils)
#NM="\[\033[0;38m\]" #means no background and white line
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"
HII="\[\033[0;33m\]"
DYN="\e]2;titlebar\a"
DYN="\e]2;\u@\h\a"

#decide color of hostname
# http://www.funtoo.org/en/articles/linux/tips/prompt/
if [ "$HOSTNAME" = "cerebdil" ]; then
    HII="\[\033[0;36m\]"
fi
if [ "$HOSTNAME" = "kenpachi" ]; then
    HII="\[\033[0;34m\]"
fi
if [ "$HOSTNAME" = "endscape" ]; then
    HII="\[\033[0;34m\]"
fi
if [ "$HOSTNAME" = "fenris" ]; then
    HII="\[\033[0;32m\]"
fi
if [ "$HOSTNAME" = "iris" ]; then
    HII="\[\033[0;31m\]"
fi

export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"
# $DYN"
#export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN$DYN"
#export PS1="\[\e]2;\u@\H \w\a\e[32;1m\]>\[\e[0m\] "
#export PS1="$NM[ $HI\u@$HII\h $SI\w$NM ]$ $IN"
if [ "$TERM" != "dumb" ] && [ "$OSTYPE" = "linux-gnu" ]; then
    export LS_OPTIONS='--color=auto'
    eval `dircolors -b ~/.dir_colors`
fi

# Useful aliases
#alias ls='ls --color=auto -hF'
#if in osx:
if [ -x /System/Library ]; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    ## http://hocuspokus.net/2008/01/a-better-ls-for-mac-os-x
    export MANPATH=/opt/local/share/man:$MANPATH
    # Use self-compiled vim
    # http://blog.coredumped.org/2010/01/osx-vim-and-python.html
    #export EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim'
    #screw macvim, compile vim from the official repo
    alias flushdns='sudo dscacheutil -flushcache'
    if [ -x /usr/local/bin/vim ]; then
        export EDITOR='/usr/local/bin/vim'
    fi
    eval `gdircolors -b ~/.dir_colors`
    alias vim='$EDITOR'
    alias locate='mdfind'
    alias umount='diskutil unmount'


    #Seems coreutils installed by macports need a g in fromt
    if [ -x /opt/local/bin/gls ]; then
        alias ls='gls $LS_OPTIONS -hF'
        export LS_OPTIONS='--color=auto'
    fi
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh
#export ARCHFLAGS="-arch i386 -arch x86_64"
alias eclimd='~/Dropbox/dev/eclipse_osx64/eclimd'
alias rd='screen -rd'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$PATH:~/scripts
alias ircitea='ssh -f harahauk@gina.itea.ntnu.no -L ircitea.hauknes.org:26667:irc.itea.ntnu.no:6667 -N'
alias beep='echo -e "\007"'
alias hsync='rsync -P --recursive --ignore-existing $@'
alias colog='ccze -A < $@|less -R'
alias siterip='wget -r --no-parent --reject "index.html*" $@'
alias p='ssh harahauk@poseidon.orakel.ntnu.no'
alias htopc='htop --sort-key PERCENT_CPU'
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/Library/Python/2.7/bin:$PATH"
export TERM="screen-256color"
