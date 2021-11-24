# Functions
error_return() {
  echo "%(?..%{$FG[196]%}%B  %b%{$reset_color%})"
}
function get_right_prompt() {
    if type git &>/dev/null && git rev-parse --git-dir > /dev/null 2>&1; then
        echo -n "%{$FG[075]%}[$FG[078]$(git_prompt_short_sha)%{$FG[075]%}]%{$reset_color%} "
    else
        echo -n "%{$reset_color%}"
    fi
}

# Prompt  
PROMPT='%{$FG[082]%}%B ﴔ %b%{$reset_color%}at %{$FG[063]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$FG[196]%}   %{$reset_color%}' 
RPROMPT='$(error_return)$(get_right_prompt)'  

# Git Prompt 
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[075]%}($FG[078]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[075]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%}  "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[226]%}  "
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[196]%}  "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[200]%} 凜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[099]%}  "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[081]%} 﫴"

