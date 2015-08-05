# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
source ~/.git-completion.bash

# User specific aliases and functions
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
# colors for ls
#export LS_COLORS='no=00:fi=00:di=01;34:ln=00;04;31:pi=00;37:so=01;31:bd=37:cd=37:or=01;31:ex=01;31:*.o=01:*.gz=00;35:*.tar=00;35:*.Z=00;35:*.tgz=00;35:*.mpg=36:*.mpeg=36:*.dat=35:*.mov=35:*.pm=35:*.jpg=36:*.JPG=36:*.gif=36:*.GIF=36:*.ps=01;33:*.pdf=01;35:*.fm=01;35:*.htm=01;34:*.html=01;34:*.HTM=01;34:*.HTML=01;34:*.c=00;31:*.cpp=00;31:*.pl=00;31:*.my=01;04;35:*.man=01;04;07;30:*.ppt=35:*.DOC=35:*.doc=35:*.cmd=04;35:*.tcl=04;36:*.tclscript=04;36:*.log=04;35'
alias grep='grep --color=auto'
#alias ls='ls -G'
alias ll='ls -l'
alias c='clear'

alias ga='git add'
alias gim='git ci -m'
alias gpll='git pull'
alias mnpm="npm --registry=http://r.npm.sankuai.com --cache=$HOME/.npm/.cache/mnpm --userconfig=$HOME/.mnpmrc "
alias sudo="sudo "
alias gpsh='git push'

alias jrun='cd .. && mvn clean install && cd - && mvn -Djetty.port=9090 jetty:run'
alias jrun1='mvn clean install && mvn -Djetty.port=9090 jetty:run'
alias dev='ssh dev'
alias env='NODE_ENV=production npm start'


alias views='cd src/main/webapp/WEB-INF/views'
alias static='cd src/main/webapp/static'
alias dec='cd src/main/webapp/WEB-INF/decorators'
alias conf='cd src/main/webapp/WEB-INF/conf'
alias corework='cd src/main/java/com/sankuai/meituan'

alias ct='cd /Users/zhangcongjie/workspace/mtct'
alias pt='cd /Users/zhangcongjie/workspace/mtpt/mtpt-web'
alias as='cd /Users/zhangcongjie/workspace/mtas'
alias crm='cd /Users/zhangcongjie/workspace/mtcrm'
alias mop='cd /Users/zhangcongjie/workspace/mtmop'
alias sem='cd /Users/zhangcongjie/workspace/mtsem'
alias rt='cd /Users/zhangcongjie/workspace/mtrt'
alias org='cd /Users/zhangcongjie/workspace/mtorg'
alias core='cd /Users/zhangcongjie/workspace/mtcore'
alias au='cd /Users/zhangcongjie/workspace/mtau'
alias oa='cd /Users/zhangcongjie/workspace/mtoa/mtoa'
alias poi='cd /Users/zhangcongjie/workspace/mtpoi'
alias poip='cd /Users/zhangcongjie/workspace/mtpoiop/mtpoiop-web'
alias deal='cd /Users/zhangcongjie/workspace/mtdeal/mtdeal-web'
alias deal2='cd /Users/zhangcongjie/workspace/mtdeal2/mtdeal2-web-sh'
alias gis='cd /Users/zhangcongjie/workspace/mtgis/mtgis-web'
alias wage='cd /Users/zhangcongjie/workspace/mtwage'
alias cms='cd /Users/zhangcongjie/workspace/mtcms'
alias dwf='cd /Users/zhangcongjie/workspace/mtbpm/mtdwf'
alias upma='cd /Users/zhangcongjie/workspace/mtupm/upm-admin'
alias upmw='cd /Users/zhangcongjie/workspace/mtupm/upm-web'
alias eic='cd /Users/zhangcongjie/workspace/mteic/mteic-web'
alias bir='cd /Users/zhangcongjie/workspace/bir'
alias pmc='cd /Users/zhangcongjie/workspace/mtpmc/mtpmc-web'
alias mtscp='cd /Users/zhangcongjie/workspace/mtscp-group-bd/mtscp-group-bd-web'
alias interview='cd /Users/zhangcongjie/workspace/mtinterview/mtinterview-web'
alias coop='cd /Users/zhangcongjie/workspace/mtcoop/mtcoop-web'

alias fes="cd $HOME/code/fe.scripts && git pull && cd - && fes"

# @link http://www.jonmaddox.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/((/(/' -e 's/))/)/'
}

function proml() {
    local WHITE="\[\033[0;30m\]"
    local RED="\[\033[0;31m\]"
    local GREEN="\[\033[0;32m\]"
    local YELLOW="\[\033[0;33m\]"
    local BLUE="\[\033[0;34m\]"
    local PURPLE="\[\033[0;35m\]"
    local CYAN="\[\033[0;36m\]"
    local COLOR_END="\[\033[0m\]"
    local BWHITE="\[\033[1;30m\]"
    local BRED="\[\033[1;31m\]"
    local BGREEN="\[\033[1;32m\]"
    local BYELLOW="\[\033[1;33m\]"
    local BBLUE="\[\033[1;34m\]"
    local BPURPLE="\[\033[1;35m\]"
    local BCYAN="\[\033[1;36m\]"
    local BCOLOR_END="\[\033[1m\]"
    if [ $USER = "root" ]; then
        #local PREFIX="♚"
        local PREFIX="♔"
    else
        #local PREFIX="⚑"
        #local PREFIX="♖"
        #local PREFIX="♛"
        #local PREFIX="☞"
        #local PREFIX=""
        local PREFIX="♬"
    fi
    #PS1="$COLOR_END[$BLUE\u$COLOR_END@$RED\h$COLOR_END:$BLUE\W$COLOR_END$GREEN\$(parse_git_branch)$COLOR_END]$RED$PREFIX$COLOR_END "
    PS1="$COLOR_END[$BLUE\u$COLOR_END@$PURPLE\h$COLOR_END:$BLUE\W$COLOR_END$GREEN\$(parse_git_branch)$COLOR_END]$PURPLE$PREFIX$COLOR_END  "
   #export PS1="$COLOR_END$PURPLE[\W]$COLOR_END $GREEN\$(parse_git_branch)$COLOR_END$PURPLE$PREFIX$COLOR_END "
}
proml

#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
case $TERM in
xterm*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}"; echo -ne "\007"'
    ;;
screen)
    PROMPT_COMMAND='echo -ne "\033_${PWD/#$HOME/~}"; echo -ne "\033\\"'
    ;;
*)
    PROMPT_COMMAND=''
    ;;
esac
export CLICOLOR=1
export TERM=xterm-256color
