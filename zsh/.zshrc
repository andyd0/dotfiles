# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/andydavila/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL="\uf0e7"
SPACESHIP_CHAR_PREFIX="\uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="false"
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_KUBECONTEXT_SHOW="false"
SPACESHIP_NODE_SHOW="false"

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
plugins=(
  alias-finder
  copydir
  extract
  httpie
  history
  jsontools
  vscode
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi

export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"

. ~/.zsh_aliases
. ~/.zsh_t_aliases
. ~/.zsh_functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

ulimit -Sn 10240

DISABLE_MAGIC_FUNCTIONS=true
