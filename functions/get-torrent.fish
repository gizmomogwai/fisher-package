function get-torrent -d "get a torrent file via deluge"
  set name $argv[1]
  set torrent $argv[2]
  set location (networksetup -getairportnetwork en0 | cut -f 2 -d ':' | xargs)
  switch $location
    case "Lakeside"
      set h pi@seehaus-piano.fritz.box
    case "Pepe"
      set h pi@fs.local
    case "Eisbach"
      set h pi@fs.local
    case "*"
      echo "Unknown location: $location"
      exit 1
  end
  ssh $h "./get-torrent.sh $name '$torrent'"
end
