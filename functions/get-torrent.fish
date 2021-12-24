function get-torrent -d "get a torrent file via deluge"
  set location (/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | awk '/ SSID:/ {print $2}')
  switch $location
    case "Lakeside"
      set h pi@seehaus-piano.local
    case "Pepe"
      set h pi@fs.local
    case "*"
      echo "Unknown location: $location"
      exit 1
  end
  ssh $h "sudo ip netns exec protected su -l pi -c '/usr/bin/deluge-console add $argv[1]'"
end
