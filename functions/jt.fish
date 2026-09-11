function jt --description "select one just task"
  if just --list | grep --invert-match "Available recipes:" | sed -E 's/^[[:space:]]+/just /' | fzf --ansi --multi > /tmp/fzf.result
    set fzf_result (cat /tmp/fzf.result)
    commandline $fzf_result
  end
end
