# Code 

- `@reboot  cp /home/srv/engineering/reports/engineering_system_status_q1.md /home/srv/engineering/reports/archive/engineering_system_status_q1_$(/usr/bin/date +\%F).md && /usr/bin/logger -t report-snapshot "OK: snapshot created" || /usr/bin/logger -t report-snapshot "ERROR: snapshot failed"`

- `journalctl -t report-snapshot`: retrieves log to see if it was saved or not.

1) On reboot
2) copy the file
3) save in archive with date 
4) log output
