

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If running interactively, then:
PS1='[\e[31;1m]\u@\h[\e[0m]: [\e[34m]\t \d [\e[0m]\n[\e[32m]\w[\e[0m] > '
if [ "$PS1" ]; then

    # don't put duplicate lines in the history. See bash(1) for more options
    # export HISTCONTROL=ignoredups

    # enable color support of ls and also add handy aliases
    eval `dircolors -b`
    alias ls='ls -lA --color=auto'
    alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
    alias ftpfix='chmod 644 *.jpg;chmod 644 *.htm;chmod 644 *html'
    alias sg='./script/generate'
    alias sc='./script/console'
    alias dbc='./script/dbconsole -p'
    alias push='git add *;git commit -a;git push;git push heroku master;'
       
    # some more ls aliases
    # set a fancy prompt
    #PS1='\e[31;1m\u@\h\e[0m: \e[32m\w\e[0m > '
PS1='\[\e[31;1m\]\u@\h\[\e[0m\]: \[\e[34m\]\t \d \[\e[0m\]\n\[\e[32m\]\w\[\e[0m\] > '    
#PS1='\u@\h:\w\ \t \d \n> '

    # If this is an xterm set the title to user@host:dir
    #case $TERM in
    #xterm*)
    #    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    #    ;;
    #*)
    #    ;;
    #esac

    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc).
    #if [ -f /etc/bash_completion ]; then
    #  . /etc/bash_completion
    #fi
fi
export CVSROOT='/gestalt/canonical/cvs'
