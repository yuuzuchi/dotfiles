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
alias sleep='systemctl suspend'

export wallpaper="$HOME/Wallpapers/tokyo-night-girl.png"

# start up zoxide
eval "$(zoxide init bash)"

alias cd='z'
alias rin='yay'
alias rinyay='yay'
alias otd='systemctl enable --user --now opentabletdriver'

function cdl() {
	cd "$1" && ls
}
export PATH=/home/yuzu/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=/home/yuzu/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
