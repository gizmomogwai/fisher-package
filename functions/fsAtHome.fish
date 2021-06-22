function fsAtHome -d "connect to fs and open services"
  ssh -fN fsAtHome
  open http://localhost:38112
  open http://localhost:38384
end
