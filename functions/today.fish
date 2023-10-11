function today -d "Show agenda for today"
  set today $(date +%Y-%m-%d)
  set tomorrow $(dateadd $today +1d)
  gcalcli agenda $today $tomorrow
end
