# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/home/jon/.oh-my-zsh"
#export ZSH=/usr/share/oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

export POWERLEVEL9K_IGNORE_TERM_COLORS=false
export POWERLEVEL9K_IGNORE_TERM_LANG=false

plugins=(
	git vi-mode
	ssh-agent
    z
	)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(  git
#)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## ALIASES ---------------------------------------------------------- {{{
setxkbmap -option caps:swapescape

alias n="npx" # npm run module shortcut
alias p="sudo pacman"
alias SS="sudo systemctl"
alias nv="nvim"
alias sv="sudo vim"
alias rr="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias gcm="git commit -m"
alias ga="git add --all"
alias gpo="git push origin"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias so="source"
alias sc="sc-im"
alias po="sudo poweroff"
alias rbt="sudo reboot"
alias c="clear"
#alias wa="watson"
#alias ws="watson status"
#alias wl="watson log -c"

alias nvimconf="nvim ~/.config/nvim/init.vim" 

# Adding color
alias l='exa -l'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl -x --audio-format mp3 --add-metadata -xic" # Download only audio

alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias starwars="telnet towel.blinkenlights.nl"

alias login76="ssh jon@10.14.5.51"

alias autoremove="sudo pacman -Rcns $(pacman -Qdtq)"
alias pacmancleancache="sudo paccache -rk 1"
alias pacmancleanuninstall="sudo paccache -ruk0"

# TeX
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"

#python 
#alias python=""
## }}}

## PATH SETTING AND ENV VARS ---------------------------------------- {{{
## Add to path
#export PATH=$PATH:$HOME/.local/bin/
export PATH="$HOME/.poetry/bin:$PATH"
# SSH Path
export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set vim as default editor 
export VISUAL=nvim
export EDITOR="$VISUAL"
# Set some important env vars
export TERMINAL=alacritty
#export BROWSER=firefox
## }}}

# PostgresSQL credentials
export PGSSLKEY="/home/jon/pg_keys/client.key"
export PGSSLCERT="/home/jon/pg_certs/client.crt"
export PGSSLROOTCERT="/home/jon/pg_certs/ca.crt"
export PGSSLMODE="verify-full"

## KEYBINDINGS FOR TERMINAL ----------------------------------------- {{{
# Better searching in command mode
#bindkey -M vicmd '?' history-incremental-search-backward
#bindkey -M vicmd '/' history-incremental-search-forward
# Beginning search with arrow keys
#bindkey "^[OA" up-line-or-beginning-search
#bindkey "^[OB" down-line-or-beginning-search
#bindkey -M vicmd "k" up-line-or-beginning-search
#bindkey -M vicmd "j" down-line-or-beginning-search
#bindkey "^N" down-line-or-beginning-search
#bindkey "^P" up-line-or-beginning-search
#bindkey "^[[A" up-line-or-beginning-search
#bindkey "^[[B" down-line-or-beginning-search
## }}}

# Remove username from prompt
prompt_context() {}

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jon/google-cloud-sdk/path.zsh.inc' ]; then . '/home/jon/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jon/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/jon/google-cloud-sdk/completion.zsh.inc'; fi

