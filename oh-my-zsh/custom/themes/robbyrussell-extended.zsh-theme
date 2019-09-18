
# the svn plugin has to be activated for this to work.
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} '
RPROMPT='$(git_prompt_info)$(svn_prompt_info)'

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git: %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[red]%}\u2717"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} %{$fg[green]%}\u2714"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn: %{$fg[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[red]%}\u2717"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[blue]%} %{$fg[green]%}\u2714"
