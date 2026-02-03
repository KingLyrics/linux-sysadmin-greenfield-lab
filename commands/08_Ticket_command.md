# Code ran


- `setfacl -m g:finance:r-x srv/engineering/reports` - what this does 
1) Allows fine tuned access
2) Allows the finance group to read reports and only that. Traversel else where not allowed

- `getfacl path` - check the acl for a dir
- `setfacl -m g:finance:r-x srv/engineering/` - ensures finance can access the engineering folder to reach the subdirectory reports
- `setfacl -d -m g:finance:r-x srv/engineering/reports` - ensures new files inherit the same acl

