function rs -d "repo sync"
  repo sync --quiet $argv || repo sync --quiet --jobs=1 --fail-fast $argv
end
