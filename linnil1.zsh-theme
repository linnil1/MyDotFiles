if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

PROMPT='$(git_prompt_info)$(conda_env)%{$fg[$NCOLOR]%}%n@%m%{$reset_color%}:%B%{$fg[blue]%}%~%{$reset_color%}%(!.#.$) '
RPROMPT='[%D %*]'

# git theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# conda theme
conda_env() {
    if [ ! -z "$CONDA_PREFIX" ]
    then
        print -n "%{$fg[green]%}[${CONDA_DEFAULT_ENV##*/}]%{$reset_color%}"
    fi
}
