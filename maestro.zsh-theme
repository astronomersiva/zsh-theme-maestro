fg_bold[69]="%{[38;5;69m%}"
fg_bold[113]="%{[38;5;113m%}"
fg_bold[197]="%{[38;5;197m%}"
fg[69]="%{[38;5;69m%}"
fg[113]="%{[38;5;113m%}"
fg[197]="%{[38;5;197m%}"

# local ret_status="%(?:%{$fg_bold[113]%}ʘ‿ʘ :%{$fg_bold[197]%}ʘ_ʘ )"
local ret_status="%(?:%{$fg_bold[113]%}❝ :%{$fg_bold[197]%}❝ )"
PROMPT='${ret_status}%{$fg[113]%}%c%{$reset_color%}$(git_prompt_info) %{$fg[69]%}➝ %{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[197]%} ի%{$reset_color%}%{$fg_bold[69]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[69]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[197]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
