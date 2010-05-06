

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


# Various PATH and ENV sets

ANT_HOME='/opt/ant'
CVSROOT='/gestalt/canonical/cvs'
S3_KEY='AKIAJ5KJCY62W5BPQP4Q'
S3_SECRET='vwym0aHCBphMDV35azLf1YPsfzNjbWVfp4XMvHXr'

# If running interactively, then:
if [ "$PS1" ]; then

    # Enable color support of ls
    eval `dircolors -b`

    # General Aliases
    alias ls='ls -lA --color=auto'
    alias dir='ls --color=auto --format=vertical'
    alias doapt='sudo apt-get update;sudo apt-get dist-upgrade'

    # Ruby Dev Aliases
    alias sg='./script/generate'
    alias sc='./script/console'
    alias dbc='./script/dbconsole -p'
    alias push='git add *;git commit -a;git push;git push heroku master;'

    # Playdom aliases
    
       
    # Set super prompt
    PS1='\[\e[31;1m\]\u@\h\[\e[0m\]: \[\e[34m\]\t \d \[\e[0m\]\n\[\e[32m\]\w\[\e[0m\] > '    

fi
