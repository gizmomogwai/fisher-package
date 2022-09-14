function podman-fix-time -d "fix podman machine time"
  podman machine ssh vm sudo date --set=@$(date '+%s')
end
