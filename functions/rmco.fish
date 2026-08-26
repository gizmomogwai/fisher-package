function rmco --description "select and remove a Docker container"
  docker container ls --all --format '{{.ID}}\t{{.Command}}:{{.Status}}:{{.Size}}' | fzf | read --delimiter \t container_id container_details
  and docker container rm --force $container_id
end
