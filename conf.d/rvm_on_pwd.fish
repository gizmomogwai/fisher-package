function rvm_on_pwd --description "check for rvm config on pwd change" --on-variable PWD
  if test -e .ruby-version && test -e .ruby-gemset
    rvm
  end
end
