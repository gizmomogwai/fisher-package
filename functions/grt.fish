function grt -d "Run a task from my global rakefile"
  if rake -f ~/rakefile.rb -T | fzf --ansi > /tmp/fzf.result
    set fzf_result (cat /tmp/fzf.result | cut -d ' ' -f 2)
    set h "rake -f ~/rakefile.rb $fzf_result"
    commandline $h
  end
end
