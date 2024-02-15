#  my zshrc

# generate auto colros and change prompt
autoload -U colors && colors
PS1="%{$fg[blue]%}%~%{$fg[red]%}%{$fg[green]%}>>%b"



# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


#basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall

#opening .zshrc by command
alias zrc="$EDITOR $HOME/.zshrc"

