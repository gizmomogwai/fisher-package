function rvm --argument-names "ruby" --description "Ruby Version Manager"
  if functions --all --names | grep _old_rvm_prompt > /dev/null
    return 0
  end

  if test -n "$ruby"
    set parts (string split "@" $ruby)
    set ruby_version $parts[1]
    set ruby_gemset $parts[2]
  else
    set ruby_version (head -1 .ruby-version)
    set ruby_gemset (head -1 .ruby-gemset)
  end

  if string match -q -- "ruby*" $ruby_version
  else
    set ruby_version ruby-$ruby_version
  end

  set total $ruby_version@$ruby_gemset

  set --global --export GEM_HOME ~/.rvm/gems/$total
  set --global --export PATH ~/.rvm/gems/$total/bin ~/.rvm/gems/$ruby_version@global/bin ~/.rvm/rubies/$ruby_version/bin ~/.rvm/bin $PATH
  set --global --export GEM_PATH ~/.rvm/gems/$total ~/.rvm/gems/$ruby_version@global
  set --global --export RUBY_VERSION $ruby_version
  set --global --export RUBY_GEMSET $ruby_gemset

  functions --erase _old_rvm_prompt
  functions --copy fish_prompt _old_rvm_prompt
  function fish_prompt
    set -l bg 333
    set -l standout green

    set_color $standout
    set_color red
    echo -n "RVM"
    set_color $standout
    echo -n " $RUBY_VERSION"
    set_color $fish_color_normal
    echo -n "@"
    set_color $standout
    echo -n "$RUBY_GEMSET"
    set_color $fish_color_normal
    echo

    _old_rvm_prompt
  end
end
