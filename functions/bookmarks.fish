function bookmarks --description "quickly open a bookmark"
  extract-bookmarks-d |  fzf --delimiter '|' --bind 'enter:execute:open {3}'
end
