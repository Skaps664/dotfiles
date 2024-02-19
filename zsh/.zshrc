#  my zshrc

# preloads verson control for us
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }



# generate colors and remove username and machinename from prompt and export it
autoload -U colors && colors
PS1="[%{$fg[blue]%}%~%{$fg[white]%}]%{$fg[green]%} >>%b "

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# load vi mode
bindkey -v
export KEYTIMEOUT=1

#basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall

#opening .zshrc by command
alias zrc="$EDITOR $HOME/.dotfiles/zsh/.zshrc"


