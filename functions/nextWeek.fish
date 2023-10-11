function nextWeek -d "Show agenda for the next week"
  set today $(date +%Y-%m-%d)
  set nextWeek $(dateadd $today +1w)
  gcalcli agenda $today $nextWeek
end
