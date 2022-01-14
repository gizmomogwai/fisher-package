function fix-fusefs -d 'Fix hanging fusefs'
  sudo kextunload -b io.macfuse.filesystems.macfuse
end