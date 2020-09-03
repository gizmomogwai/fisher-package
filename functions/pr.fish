function pr -d "list all projects with projects.rb"
  if ~/Dropbox/Documents/_projects/projects.rb | fzf > /tmp/project.result
    pushd (cat /tmp/project.result)
  end
end
