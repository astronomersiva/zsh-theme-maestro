FG[69]="%{[38;5;69m%}"
FG[113]="%{[38;5;113m%}"
FG[197]="%{[38;5;197m%}"
FG[215]="%{[38;5;215m%}"

function git_repo_name() { 
  gittopdir=$(git rev-parse --git-dir 2> /dev/null)

  if [[ "foo$gittopdir" == "foo.git" ]]; then
    echo $(basename $(pwd))
  elif [[ "foo$gittopdir" != "foo" ]]; then
    echo `dirname $gittopdir | xargs basename`
  fi
}

function get_prompt_dir {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    path_from_git_root=${$(git rev-parse --show-prefix)%/}

    if [[ ! -z $path_from_git_root ]]; then
      echo $(git_repo_name)/${path_from_git_root}
    else
      echo $(git_repo_name)
    fi
  else
    echo %~
  fi
}

RET_STATUS="%(?:%{$FG[113]%}➝  :%{$FG[197]%}➝  )"
PROMPT='${RET_STATUS}%{$FG[113]%}$(get_prompt_dir)%{$reset_color%}$(git_prompt_info) %{$FG[215]%}❝%{$reset_color%} '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[197]%} %{$reset_color%}%{$FG[69]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[69]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[197]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
