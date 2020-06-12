# Java Setting - 2020.04.18
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME=$JAVA_HOME_11

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Cursor setting
export PS1="\e[0;35m->> \e[1;34m\W\e[0;32m\$(parse_git_branch)\e[0;37m $"
# export PS1="$"
export TERM=screen-256color

alias vim="/usr/local/Cellar/vim/8.1.2350/bin/vim"
