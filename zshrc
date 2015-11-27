source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme.
antigen theme alanpeabody

# Basic bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z # jump around!
antigen bundle tmux
antigen bundle tmuxinator

# Ruby
antigen bundle rbenv
antigen bundle rails
antigen bundle capistrano
#antigen bundle heroku

# Docker
antigen bundle docker
antigen bundle docker-compose

# Python
#antigen bundle pip
#antigen bundle python
#antigen bundle virtualenv

# Node
#antigen bundle coffee
#antigen bundle node
#antigen bundle npm

# Various
antigen bundle vagrant

# Path for custom completions
fpath=(~/.zsh/completion $fpath)

# Tell antigen that you're done.
antigen apply

export PATH="$HOME/.bin:/usr/local/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
alias gclean='git reset --hard && git clean -df'
eval "$(thefuck --alias)"

eval "$(hub alias -s)"

# Set terminal to 256 colors if using an xterm compatible term
if [[ "$TERM" =~ xterm.* ]]; then
  export TERM=gnome-256color
fi

if [[ $- == *i* ]]; then # Running in an interactive shell
  # Disable XON/XOFF flow control with C-S/C-Q
  stty -ixon
  stty stop undef
fi

export GOPATH=$HOME/go
export PATH="$HOME/.rbenv/bin:$PATH:$GOPATH/bin"
