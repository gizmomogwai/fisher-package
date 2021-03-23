function hcp5gv3_deactivate --description "deativate hcp5gv3"
  set -e Target
  set -e Debug
  set -e ParallelBuild
  set -e WS
  functions -e fish_prompt
  functions -c _old_hcp5gv3_fish_prompt fish_prompt
  functions -e _old_hcp5gv3_fish_prompt
end

function hcp5gv3 --description "HCP5-GV3 Project setup"

  set -gx WS /media/more/hcp5/ws/gv3
  cd $WS
  rvm ruby-2.7.1@hcp5
  
  set -gx Target audi_hcp5_bosch
  set -gx Debug true
  set -gx ParallelBuild true

  functions --erase _old_hcp5gv3_fish_prompt
  functions -c fish_prompt _old_hcp5gv3_fish_prompt
  function fish_prompt
    set -l bg 333
    set -l standout 0f0
    
    set_color $standout --background $bg
    echo -n "HCP5 "
    set_color $fish_color_normal --background $bg
    echo -n Target=
    set_color $standout --background $bg
    echo -n "$Target "
    set_color $fish_color_normal --background $bg
    echo -n Debug=
    set_color $standout --background $bg
    echo -n "$Debug "
    set_color $fish_color_normal --background $bg
    echo -n ParallelBuild=
    set_color $standout --background $bg
    echo $ParallelBuild

    _old_hcp5gv3_fish_prompt
  end
end
