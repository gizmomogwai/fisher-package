function dlang-news -d 'Read dlang news in thunderbird'
  cd /tmp && ~/bin/nntp-proxy-digitalmars-com &
  open -a Thunderbird
end
