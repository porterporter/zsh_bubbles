# Zsh prompt-compatible theme: debug
prompt_debug_setup() {
  PROMPT="DEBUG> "
  RPROMPT=""
}

prompt_debug_precmd() {
  # No-op for compatibility
  return 0
}

prompt_debug_setup
