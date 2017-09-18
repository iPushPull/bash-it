#!/usr/bin/env bash

SCM_GIT_SHOW_MINIMAL_INFO=true
SCM_THEME_PROMPT_PREFIX="${cyan}(${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan})"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"

prompt() {
  PS1="$(scm_prompt_info)${reset_color}${cyan}[ENV][\u@\h][\w]${reset_color} $ "
}

LS_COLORS=$LS_COLORS:'di=1;36:ex=32:ln=33:or=31:' ; export LS_COLORS

safe_append_prompt_command prompt
