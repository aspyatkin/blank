PROMPT='
%{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg_bold[yellow]%}$(git_prompt_info)%{$reset_color%} %{$fg[cyan]%}$(git_prompt_behind)$(git_prompt_ahead)%{$reset_color%}
%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})›%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}∗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD="⇡"
ZSH_THEME_GIT_PROMPT_BEHIND="⇣"