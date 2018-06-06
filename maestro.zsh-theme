# Need to find a way to match this with LS_COLORS

fg_bold[69]="%{[38;5;69m%}"
fg_bold[113]="%{[38;5;113m%}"
fg_bold[197]="%{[38;5;197m%}"
fg_bold[207]="%{[38;5;207m%}"
fg_bold[215]="%{[38;5;215m%}"
fg[69]="%{[38;5;69m%}"
fg[86]="%{[38;5;86m%}"
fg[197]="%{[38;5;197m%}"
fg[207]="%{[38;5;207m%}"
fg[215]="%{[38;5;215m%}"


local ret_status="%(?:%{$fg_bold[113]%}-> :%{$fg_bold[197]%}-> )"
PROMPT='${ret_status} %{$fg[113]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[69]%}on branch %{$fg[207]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[215]%}X"
ZSH_THEME_GIT_PROMPT_CLEAN=""
