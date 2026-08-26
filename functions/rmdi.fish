function rmdi -d "select and remove a docker image"
  docker image ls --filter dangling=false --format '{{.ID}}\t{{.Repository}}:{{.Tag}}\t{{.Size}}' | fzf | read -d \t image_id image_details
  and docker image rm --force $image_id
end
