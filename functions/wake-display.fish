function wake-display --description "wake my desktop display"
  ssh esr-desktop env DISPLAY=:0 xrandr --output DP-2 --mode 3440x1440
end
