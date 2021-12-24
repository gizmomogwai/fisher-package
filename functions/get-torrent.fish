function get-torrent -d "get a torrent file via deluge"
  set location (/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | awk '/ SSID:/ {print $2}')
  switch $location
    case "Lakeside"
      ssh pi@seehaus-piano.local "deluge-console add '$argv[1]'"
    case "Pepe"
      ssh pi@fs.local "deluge-console add '$argv[1]'"
    case "*"
      echo "Unknown location: $location"
  end
end
