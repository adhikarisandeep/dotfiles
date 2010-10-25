# Sandeep's .zshrc 

# History settings 
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=10000
setopt appendhistory 
setopt sharehistory
setopt EXTENDED_HISTORY # add timestamps to history

# just type name of dir to CD
setopt autocd

zstyle :compinstall filename '/home/sandeep/.zshrc'

# Completion exclusion
zstyle ':completion:*:(rm|kill|diff):*' ignore-line yes

# colorful listings
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Autocomplete
autoload -Uz compinit
compinit

# Correct spelling
setopt CORRECT
setopt CORRECT_ALL


# Right Prompt
# export RPS1="%{%0(?,$fg_bold[green],$fg_bold[red])%}%?%{$reset_color%}"
export RPS1="%B%F{green}%?%f%b"

# Anchored search: type some characters and press up/down
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey "^[OA" history-beginning-search-backward
bindkey "^[OB" history-beginning-search-forward

# Keybindings
# bindkey -v
# bindkey '\e[3~' delete-char
# bindkey '^R' history-incremental-search-backward
# bindkey "^[OH" beginning-of-line
# bindkey "^[OF" end-of-line

#Others 
unsetopt beep
setopt NUMERIC_GLOB_SORT
setopt EXTENDED_GLOB

# Aliases 
source ~/.zsh_alias

# Custom functions
source ~/.zsh_function

### Attribute codes:
####
####   00    none
####   01    bold
####   04    underscore
####   05    blink
####   07    reverse
####   08    concealed
####
#### Text color codes:
####   30    black
####   31    red
####   32    green
####   33    yellow
####   34    blue
####   35    magenta
####   36    cyan
####   37    white
####
#### Background color codes:
####   40    black
####   41    red
####   42    green
####   43    yellow
####   44    blue
####   45    magenta
####   46    cyan
####   47    white

# Prompt
autoload -U promptinit
promptinit
# PS1="%F{32}%n%f:%c %# "
PS1=$'%{\e[1;36m%}%n:%{\e[0m%} %F{yellow}%c%f %# '



