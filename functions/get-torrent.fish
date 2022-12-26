function get-torrent -d "get a torrent file via deluge"
  set name $argv[1]
  set torrent $argv[2]
  set location (/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | awk '/ SSID:/ {print $2}')
  switch $location
    case "Lakeside"
      set h pi@seehaus-piano.fritz.box
    case "Pepe"
      set h pi@fs.local
    case "*"
      echo "Unknown location: $location"
      exit 1
  end
  ssh $h "./get-torrent.sh $name '$torrent'"
end
