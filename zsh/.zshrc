path+=('/usr/local/bin')
path+=('/home/anomy/.local/bin')
path+=('/home/anomy/.scripts')
path+=('/home/anomy/Dev/ximmio/projects/notes/scripts')
path+=('/home/anomy/.scripts/js-scripts')
path+=('/usr/local/go/bin')
path+=('/home/anomy/Dev/personal/gocode/bin')


export PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/anomy/.oh-my-zsh"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export VISUAL=nvim
export EDITOR="$VISUAL"
export GOPATH="/home/anomy/Dev/personal/gocode"
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

current_directory=$(pwd)
ximmio_project_directory=/home/anomy/Dev/ximmio/projects
ximmio_modules_directory=/home/anomy/Dev/ximmio/projects/modules
ximmio_platform_directory=/home/anomy/Dev/ximmio/projects/platform


#if [[ $current_directory == $ximmio_project_directory || $current_directory == $ximmio_modules_directory ||  $current_directory == $ximmio_platform_directory ]]
#then
#  git config --global core.autocrlf true
#  echo "core.autocrlf is set to true, you are safe to commit"
#else
#  git config --global core.autocrlf false
#fi


ZSH_THEME="simple"

plugins=(sudo web-search copypath copyfile dirhistory history zsh-nvm zsh-syntax-highlighting git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias ls='exa -l -t accessed --group-directories-first -s name'
alias oracle_ssh='ssh ubuntu@140.238.171.253'
alias l14_ssh='ssh -t ugure@192.168.1.56 "cd ../.. && powershell.exe"'
alias dev_ximmio_ssh='ssh -t uguremirmustafa@37.34.57.138 "cd ../.. && powershell"'
alias accp1_ximmio_ssh='ssh -t Administrator@37.97.247.228 "cd ../.. && powershell"'
alias cc='copypath'
alias cf='copyfile'
alias fff="find . -maxdepth 1 -not -path '*/.*' -type f"
# alias p='sudo pacman -Syu'
# alias r='sudo pacman -Rcns'
# alias pa='yay -Syu'
# alias ra='yay -Rcns'
# alias autoremove='sudo pacman -Rs $(pacman -Qtdq)'
alias gl='git config -l'
alias gc='git config --global core.autocrlf true'
alias gogo='cd $GOPATH/src/github.com/uguremirmustafa'
alias notes='code ~/Dropbox/notes/'
alias rm='rm -rf'
alias ee='ranger'
alias keys='keepassxc-cli'
alias vsx='vim ~/.config/sxhkd/sxhkdrc'
alias vb='sudo vim .bashrc'
alias ws='watch sensors'
alias fc='sudo fancontrol && exit 1'
alias v='sudo vim'
alias vv='nvim .config/nvim'
alias dot='nvim dotfiles'
alias edi3='nvim dotfiles/i3/.config/i3'
alias vc='cd .dotfiles/nvim/.config/nvim && nvim .'
alias u='sudo apt-get update'
alias uu='sudo apt-get upgrade'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias sd='sudo shutdown now'
# alias clock='tty-clock -c'
# alias rtv='rtv --enable-media'
##merge new settings
alias merge="xrdb -merge ~/.Xresources"

##grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

##newsboat
# alias editnews="sudo vim ~/.newsboat/urls"
# alias news="newsboat"

###youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ytm="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "

alias ytv-best="youtube-dl -f bestvideo+bestaudio"
# alias pom='sleep 1500 && notify-send "break" && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga; sleep 300 && notify-send "back to work" --urgency=critical && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga &'
alias shut10="shutdown -h +10"
alias shut5="shutdown -h +5"
alias poly="~/.config/polybar/launch.sh"
# timezsh() {
#   shell=${1-$SHELL}
#   for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
# }


# if [ -s "$HOME/.nvm/nvm.sh" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
#   alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
#   alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
#   alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
# fi
 export NVM_DIR="$HOME/.nvm"
   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
