# custom aliases

# Update and Upgrade
alias uu='sudo dnf check-update && sudo dnf upgrade'

export EDITOR=vim

alias bashrc='${=EDITOR} ~/.bashrc' # Quick access to the ~/.bashrc file

# Destructive commands interactive
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Format listings and add color
# ls, the common ones I use a lot shortened for rapid fire usage
alias ls='ls --color'
alias ll='ls -l --color'
alias l='ls -lFh  --color'   #size,show type,human readable
alias la='ls -lAFh --color'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh --color'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh --color'   #long list,sorted by date,show type,human readable
alias ll='ls -l --color'      #long list
alias ldot='ls -ld .* --color'
alias lS='ls -1FSsh --color'
alias lart='ls -1Fcart --color'
alias lrt='ls -1Fcrt --color'

# Grep coloring
alias grep='grep --color=auto'
# Launcher Etcher for usb flashing



# systemctl and journalctl shortcuts

alias sctl='systemctl'
alias jctl='journalctl'

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias t='tail -f'

# Command line head / tail shortcuts
alias H='| head'
alias T='| tail'
alias G='| grep'
alias L="| less"
alias M="| most"
alias LL="2>&1 | less"
alias CA="2>&1 | cat -A"
alias NE="2> /dev/null"
alias NUL="> /dev/null 2>&1"
alias P="2>&1| pygmentize -l pytb"

# disk space
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias dfh='df -h'

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

# Launcher Etcher for usb flashing

alias etcher='~/appImages/balenaEtcher-1.5.117-x64.AppImage'
