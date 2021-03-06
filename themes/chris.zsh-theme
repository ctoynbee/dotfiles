function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '(g)' && return
    echo '(-)'
}


function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}



PROMPT='%{$fg_bold[green]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info) $(virtualenv_info)$(prompt_char) 
~ '


RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
