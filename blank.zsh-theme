function blank_ssh_prompt() {
    if [[ -n $SSH_CONNECTION ]] || [[ $UID -eq 0 ]]; then
        if [[ $UID -eq 0 ]]; then
            echo "%{$fg_bold[red]%}%n@$(hostname -f)%{$reset_color%} "
        else
            echo "%{$fg_bold[blue]%}%n@$(hostname -f)%{$reset_color%} "
        fi
    fi
}

function blank_symbol_prompt() {
    if [[ $UID -eq 0 ]]; then
        echo "⚡"
    else
        echo "›"
    fi
}

PROMPT='
$(blank_ssh_prompt)%{$fg_bold[cyan]%}%~%{$reset_color%}$(virtualenv_prompt_info)$(git_prompt_info) %{$fg[cyan]%}$(git_prompt_behind)$(git_prompt_ahead)%{$reset_color%}
%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})$(blank_symbol_prompt)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}∗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"

ZSH_THEME_VIRTUALENV_PREFIX=" %{$fg[magenta]%}❪%{$fg_bold[magenta]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}%{$fg[magenta]%}❫{$reset_color%}"
