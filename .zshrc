
# export PATH=/Users/andreas.thoelke/.local/bin:/Users/andreas.thoelke/Library/Python/3.6/bin:$PATH

path+=('/Users/andreas.thoelke/.local/bin')
path+=('/Users/andreas.thoelke/Library/Python/3.6/bin')
path+=('/Users/andreas.thoelke/.cargo/bin')

# View man pages in vim:
export MANPAGER="nvim -c 'set ft=man' -"

# Path to oh-my-zsh installation. (why is this an env variable?)
export ZSH=/Users/andreas.thoelke/.oh-my-zsh

# TODO When is this used?
export PROJ=/Users/andreas.thoelke/Documents/Haskell/4/

export LANG=en_US.UTF-8
export LC_COLLATE="C"
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="xterm-256color"

# Open `man` pages in Chrome (not in less):
# export PAGER="col -b  | open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -f"
# export PAGER="col -b  | open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -f"

export VIMCONFIG=~/.vim
export VIMDATA=~/vimtmp

# alias hdevtools='stack exec --no-ghc-package-path --package hdevtools hdevtools -- '

# Kitty is a terminal (similar to Alacritty)
export KITTY_CONFIG_DIRECTORY="/Users/andreas.thoelke/.config/kitty"

# Neovim Remote: ---------------------------------------------------------
alias vi="nvr -l "
# when in terminal mode, use neo-vim-remote to open file in the host
# nvim instance in the previously acitve window.

alias nvim="NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
# set an environment variable to nvim's default unix address, 
# so neo-vim-remote can send it messages.

alias vicd='nvr -c "cd $(pwd) | pwd"'
# From nvim terminal mode 'vicd' changes vim's current directory 
# to the current dir in the terminal
# Neovim Remote: ---------------------------------------------------------

alias svim='nvim -u ~/.SpaceVim/vimrc'

NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# Shell prompt config created by promptline.vim
source ~/.promptline.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME=“amuse”
# ZSH_THEME="cobalt2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

function set-title(){
  TITLE="\[\e]2;$*\a\]"
  echo -e ${TITLE}
}

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
   git 
   zsh-syntax-highlighting 
   # fast-syntax-highlighting
   hub
   copyfile # "copyfile <filename>" to copy text of file into clipboard
   web-search # "google ..", "wiki" "!w"
   # zsh_reload # use "src" to reload .zshrc in all running shells
   )

source $ZSH/oh-my-zsh.sh




# User configuration --------------------------------------------------

# Activate vim bindings
# bindkey -v

unsetopt correct_all
unsetopt correct

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias sourcez="source ~/.zshrc"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# App aliases:
# /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
# Tested examples: 
# /Applications/Chromium.app/Contents/MacOS/Chromium --window-size=200,500 --window-position=0,20
# chromium --window-size=800,400 --window-position=222,222

# Git aliases: ---------------------------------------------------------
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gd='git diff'
alias go='git checkout '
alias gitk='gitk --all&'
alias gitx='gitx --all'

# Git aliases: ---------------------------------------------------------


function chpwd() {
    emulate -L zsh
    ls -a
}

# Use MacOS Preview app to view man pages:
function pman() {
    man -t ${@} | open -f -a /Applications/Preview.app/
}

# TIP: Quickly create and delete folders: "mkcd test2" - "rmcurdir"
#      Or rather just the classic way: "mkdir test3 && cd $_", "echo "test" > test3", "rm *", "cd ..", "rmdir test3"
# Make dir and change into it
function mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias rmcurdir='rmdir `pwd` && cd ..'






