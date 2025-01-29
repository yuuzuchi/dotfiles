#
# ~/.bashrc
#

# draw bnuuy
printf "($(tput setaf 4)\\$(tput sgr0)($(tput setaf 4)\\$(tput sgr0) \n( o$(tput setaf 1).$(tput sgr0)o) \no($(tput setaf 1)\"$(tput sgr0))($(tput setaf 1)\"$(tput sgr0))\n\n"

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias conf='nvim ~/.config/hypr/hyprland.conf'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias ls='ls_extended'
alias ..='cd ..'

export wallpaper="$HOME/Wallpapers/tokyo-night-girl.png"

# start up zoxide
eval "$(zoxide init bash)"

alias cd='z'

function cdl() {
	cd "$1" && ls
}
