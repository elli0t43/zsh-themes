# Functions
error_return() {
  echo "%(?.%{$FG[093]%}%B %b%{$reset_color%}.%{$FG[196]%}%B %b%{$reset_color%})"
}

# Prompt  
PROMPT='$(error_return)at %{$FG[087]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$FG[196]%}  %{$reset_color%}' 
# RPROMPT='%(?.%{$FG[093]%}%B %T'  

# Git Prompt 
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[075]%}($FG[078]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[075]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%} "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[226]%} "
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[196]%} "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[200]%} "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[099]%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[081]%} "

