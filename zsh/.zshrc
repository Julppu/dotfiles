# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jlindqvist/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  colored-man-pages
  git
  mosh
  tmuxi
  svn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
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

# tmux workaround for zsh autosuggestions
export TERM=xterm-256color

# ZSH iTerm2 integration
source ~/.zsh/.iterm2_shell_integration.zsh
eval "$(nodenv init -)"

# autocomplete commands for root when sudoing
zstyle ':completion:*:sudo::' environ PATH="/sbin:/usr/sbin:$PATH" HOME="/root"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# zsh-syntax-highlighting configuration
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[commandseparators]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fd=pink'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fd=pink'

# Homebrew binaries to path - set precedence to homebrew
# reverse order: last set is first searched when executing
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export PATH="/usr/local/opt/guile@2.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/curl/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/openssl:$PATH"
export PATH="/usr/local/sbin:$PATH"

# compiler flag paths
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/openssl/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/ruby/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/curl/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/sqlite/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/guile@2.0/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/readline/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/libpcap/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/icu4c/include"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/binutils/include"

export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/openssl/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/ruby/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/curl/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/sqlite/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/guile@2.0/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/readline/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/libpcap/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/icu4c/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/binutils/include"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/ruby/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/curl/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/sqlite/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/guile@2.0/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/readline/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libpcap/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/icu4c/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/binutils/lib/pkgconfig"

export RUBYLIB="$RUBYLIB:/usr/local/lib/ruby"
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# update PATH for the Google Cloud SDK.
if [ -f '/Users/jlindqvist/Downloads/google-cloud-sdk/path.zsh.inc' ];
    then . '/Users/jlindqvist/Downloads/google-cloud-sdk/path.zsh.inc';
fi

# enable shell completion for gcloud.
if [ -f '/Users/jlindqvist/Downloads/google-cloud-sdk/completion.zsh.inc' ];
    then . '/Users/jlindqvist/Downloads/google-cloud-sdk/completion.zsh.inc';
fi
