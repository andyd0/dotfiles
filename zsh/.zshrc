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
SPACESHIP_USER_SHOW="true"
SPACESHIP_RUBY_SHOW="true"
SPACESHIP_RUBY_PREFIX=""
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_KUBECONTEXT_SHOW="false"
SPACESHIP_NODE_SHOW="false"

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
plugins=(
  vscode
  httpie
  history
  jsontools
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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

if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

export PATH="/usr/local/opt/node@10/bin:$PATH"

#   ---------------------------
#   HELPFUL TERMINAL ALIASES
#   ---------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='code'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
# alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

#   lr:  Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'


#   ---------------------------
#   SEARCHING
#   ---------------------------
alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string


#   ---------------------------
#   NETWORKING
#   ---------------------------
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs


#   ---------------------------
#   GITHUB
#   ---------------------------
alias gi="git init && gac 'Initial commit'"

alias gs="git status"
alias gsh="git stash"
alias gshp="git stash pop"
alias glog='git log --graph --all --decorate'

alias gp="git push" # + remote & branch names
alias gpo="git push -u origin" # + branch name
alias gpom="git push origin master"

alias gl="git pull" # + remote & branch names
alias glo="git pull origin" # + branch name
alias glom="git pull origin master"

alias gb="git branch" # + branch name
alias gc="git checkout" # + branch name
alias gcb="git checkout -b" # + branch name
alias gm="git checkout master"
alias gprev="git checkout -"

alias gmm="git fetch && git pull origin master && git merge master"

alias gac="git add . && git commit -m" # + commit message
alias gcm="git commit -m"
alias gaf="git add ."

alias gam="git commit --amend -m" # change commit message if no files staged
alias gaf="git commit --amend --no-edit" # add files to latest commit
alias gr="git reset --soft HEAD~1" # undo last commit but changes remain
alias grh="git reset --hard" # undo all changes
alias gblank="git commit --allow-empty -m"


#   ---------------------------
#   ColorLS
#   ---------------------------
alias ls='colorls --dark --sd --report'
alias lc='colorls --dark --tree'


#   ---------------------------
#   FOLDERS
#   ---------------------------
alias fedora="cd ~/Documents/fedora/"
alias staff="cd ~/Documents/teachable-staff/"
alias marketing="cd ~/Documents/teachable-marketing/"
alias ref="cd ~/Documents/referable"
alias backup="cd ~/Documents/config_files"
alias practice="cd ~/Documents/practice/ct_practice"
alias dotfiles="cd ~/.dotfiles"

#   ---------------------------
#   Kubernetes
#   ---------------------------
# watch <cmd> / kubectl -w 
# kubectl get *
# kubectl describe *
# kubectl scale *
# kubectl logs -f <pod> --namespace <namespace> 


#   ---------------------------
#   MISC
#   ---------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10' # Find CPU Hogs
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias check="history | grep" # then what you're looking for
alias be="bundle exec"
alias bi="bundle install"
alias sz='source ~/.zshrc'
alias cz='code ~/.zshrc'
alias nrs='npm run start'
alias bes='bundle exec sidekiq'
alias rtest="bundle exec rspec"
alias ctest="bundle exec cucumber"
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias ttfp='teachable-tools console --app fedora --env production'
alias ttfp-bash="teachable-tools jobs:run bash --app fedora --env production"
alias ttfp-large="teachable-tools console --app fedora --env production --task-definition production-fedora-console-large"
alias ttfs-large="teachable-tools console --app fedora --env staging --task-definition staging-fedora-console-large"
alias ttsp='teachable-tools console --app staff --env production'
alias ttfs='teachable-tools console --app fedora --env staging'
alias ttss='teachable-tools console --app staff --env staging'
alias ttc='teachable-tools changelog --app fedora --env production'
alias ttr1='teachable-tools console -a fedora -e review-1'
alias setup="osascript ~/run.scpt"
alias decrypt="./scripts/secret-env decrypt"
alias gist-cb="gist -p -c -o -P -d $(date "+%Y.%m.%d-%H.%M.%S")"
alias mdev="bin/rake db:migrate RAILS_ENV=development"
alias mtest="bin/rake db:migrate RAILS_ENV=test"
alias hammer="code ~/.hammerspoon/init.lua"
alias tlogs="tail -f ~/.teachable-tools.log"
alias backup-config="cp /Users/andydavila/.zshrc ~/Documents/config_files; cp ~/run.scpt ~/Documents/config_files"
alias main="~/profile.sh main"
alias remote="~/profile.sh remote"

alias hpon="blueutil --connect cc-98-8b-f2-72-85"
alias hpoff="blueutil --disconnect cc-98-8b-f2-72-85"
alias restaurants="python3 ~/Documents/backups/restaurants.py"

export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"

source $(dirname $(gem which colorls))/tab_complete.sh

# VPN
function staging-vpn() {
  osascript -e 'tell application "Tunnelblick"' -e 'disconnect all' -e 'end tell'
  osascript -e 'tell application "Tunnelblick"' -e 'connect "adavila.zeachable"' -e 'end tell'
}

function prod-vpn() {
  osascript -e 'tell application "Tunnelblick"' -e 'disconnect all' -e 'end tell'
  osascript -e 'tell application "Tunnelblick"' -e 'connect "adavila.teachable"' -e 'end tell'
}

function home-vpn() {
  osascript -e 'tell application "Tunnelblick"' -e 'disconnect all' -e 'end tell'
  osascript -e 'tell application "Tunnelblick"' -e 'connect "client"' -e 'end tell'
}

function disconnect-vpn() {
  osascript -e 'tell application "Tunnelblick"' -e 'disconnect all' -e 'end tell'
}

function tab () {
  local cmd=""
  local cdto="$PWD"
  local args="$@"

  if [ -d "$1" ]; then
      cdto=`cd "$1"; pwd`
      args="${@:2}"
  fi

  if [ -n "$args" ]; then
      cmd="; $args"
  fi

  osascript &>/dev/null <<EOF
    tell application "iTerm2"
        tell current terminal
            launch session "Default Session"
            tell the last session
                write text "cd \"$cdto\"$cmd"
            end tell
        end tell
    end tell
EOF
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# . $HOME/.asdf/asdf.sh e

# . $HOME/.asdf/completions/asdf.bash
