# disable annoying git branch name/status junk appended to the shell prompt
export Z2_DONT_CHANGE_PROMPT=1
# z2 shell junk
. /data/z2/z2.sh

# define PATH
export PATH=/usr/local/bin:/usr/local/sbin:/data/waxsim/:/data/doxygen-1.8.0/bin:/data/aces-extras/:/data/gitscripts/:/data/workflow/:$PATH
export PATH=/Library/Python/2.7/site-packages/:$PATH

# enable autocompletion for brew
if [ -f `brew --prefix`/etc/bash_completion ]; 
then
    . `brew --prefix`/etc/bash_completion
fi

# zugs nonsense
export HOSTNAME=$(hostname)
launchctl setenv HOSTNAME $HOSTNAME
launchctl setenv M2_HOME /usr/share/maven
# for some reason I need to do this...
export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)

# nodejs
export NODE_PATH=node_modules/.bin:/usr/local/lib/node:/usr/local/lib/node_modules

# p4 config
export P4PORT="s1.local:1666"
export P4USER="jamesr"
export P4PASSWD="{TODO}"
export P4CLIENT="jamesr-aces"
export P4DIFF=/usr/local/bin/ksdiff
export P4MERGE=/usr/local/bin/ksdiff

# alias for ls and ll
alias ls='ls -hF'
alias ll='ls -lhF'

# colors for ls
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='Bxgxfxfxcxdxdxhbadbxbx'

# shell prompt format
export PS1="\[\e[1;36m\]@ \t [\w]:\[\e[0m\]\n"

