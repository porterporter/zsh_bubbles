# function _git_prompt_info() {
#   if ! git rev-parse --git-dir &>/dev/null; then
#     return 0
#   fi

#   local ref
#   ref=$(git symbolic-ref --short HEAD 2>/dev/null) ||
#     ref=$(git describe --tags --exact-match HEAD 2>/dev/null) ||
#     ref=$(git rev-parse --short HEAD 2>/dev/null) ||
#     return 0

#   echo $ref
# }

# function _bubble() {
#   local str="%{%F{#29315A}%}\uE0B6"
#   str+="%{%F{$2}%K{#29315A}%}$1"
#   str+="%{%k%F{#29315A}%}\uE0B4"
#   str+="%{%k%f%}"
#   echo $str
# }

# function _prompt_bubbles_precmd() {
#   local school_warning=""
#   [[ "$USER" == "pmilton" ]] && school_warning="\uF005 "

#   PROMPT="%(?:$(_bubble "$school_warning%n \u276f" "#3EC669") :$(_bubble "$school_warning%n \u276f" "#E64747")) "

#   RPROMPT="$(_bubble "\uE5FF %c" "#43CCEA")"
#   local git_branch="$(_git_prompt_info)"
#   [[ -n "$git_branch" ]] && RPROMPT+=" $(_bubble "\ue725 $git_branch" "#FF9248")"
# }

# autoload -U add-zsh-hook
# add-zsh-hook precmd _prompt_bubbles_precmd

# PROMPT="DEBUG "