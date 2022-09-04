function pr -d "list all projects with projects.rb"
  set selectedDir (~/Sync/projects/projects.rb | fzf)
  if test $status -eq 0
    pushd $selectedDIr
  end
end
