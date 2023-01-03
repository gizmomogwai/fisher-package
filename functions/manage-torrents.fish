function manage-torrents -d "manage torrents on fileserver via deluge console"
  set location (/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | awk '/ SSID:/ {print $2}')
  switch $location
    case "Lakeside"
      set h pi@seehaus-piano.local
    case "Pepe"
      set h pi@fs.local
    case "Eisbach"
      set h pi@fs.local
    case "*"
      echo "Unknown location: $location"
      exit 1
  end
  ssh -t $h byobu
end
