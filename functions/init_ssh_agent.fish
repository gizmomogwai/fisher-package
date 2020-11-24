function init_ssh_agent -d "init ssh agent"
  set -x SSH_ENV (ssh-agent -c | sed 's/^echo/#echo/') -d
  eval $SSH_ENV
  chmod 600 $SSH_AUTH_SOCK
  ssh-add
end
