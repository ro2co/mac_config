# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh installation.
export ZSH="/Users/ywcm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda"
# ZSH_THEME="gentoo"
# ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias k="kubectl"
alias kg='kubectl get'
alias kd='kubectl describe'
alias kdpo='kubectl describe pods'
alias kddep='kubectl describe deployment'
alias kdsvc='kubectl describe service'
alias kding='kubectl describe ingress'
alias kgpo='kubectl get pods'
alias kgdep='kubectl get deployment'
alias kgsvc='kubectl get service'
alias kging='kubectl get ingress'
alias ytree="tree -I '*svn|*node_module*'"
alias sync="cp -Rf dist sign"
alias vi="nvim"
alias swc-node="node -r @swc-node/register"
export NVM_DIR="/Users/ywcm/.nvm"
export PATH="$PATH:/Users/ywcm/Code/flutter/bin:/Users/ywcm/Code/chromedriver"
export PATH="/Applications/wechatwebdevtools.app/Contents/MacOS/:$PATH"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(fasd --init posix-alias zsh-hook)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
unalias z
z() {
  local dir
  dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}
# kubectl auto completion
source <(kubectl completion zsh)
autoload -Uz compinit
compinit

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#wireshark ssh config
export SSLKEYLOGFILE=~/.ssh/sslkeylog.log
alias chrome="open -a 'Google Chrome'"
alias umijs="npx @umijs/create-umi-app"
alias next="npx create-next-app@latest"

export PNPM_HOME="/Users/ywcm/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export FLYCTL_INSTALL="/Users/ywcm/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export GOROOT="/usr/local/go"
export GOPATH="/Users/ywcm/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/lib/pkgconfig"
export CGO_CXXFLAGS_ALLOW=".*" 
export CGO_LDFLAGS_ALLOW=".*" 
export CGO_CFLAGS_ALLOW=".*"

# pnpm
export PNPM_HOME="/Users/ywcm/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# ===== set g environment variables =====
export GOROOT="${HOME}/.g/go"
export PATH="${HOME}/bin:${HOME}/.g/go/bin:$PATH"
export G_MIRROR=https://golang.google.cn/dl/

# bun completions
[ -s "/Users/ywcm/.bun/_bun" ] && source "/Users/ywcm/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


#JAVA
export JAVA_HOME=/Users/ywcm/Library/Java/JavaVirtualMachines/jbrsdk-17.0.9

# Maven
export MAVEN_HOME=/Users/ywcm/Tools/apache-maven-3.9.6
export PATH=$PATH:$MAVEN_HOME/bin
export PATH="/Users/ywcm/.local/bin:$PATH"

