## Context
Shared departmental data directories were required under /srv.

## Actions
- Created departmental directories under /srv
- Applied group-based ownership and permissions
- Verified cross-department isolation

## Outcome
A secure, organized shared filesystem structure was implemented using least-privilege principles.




# notes
- Noticed that dev1 and dev2 were in the operations group. Corrected that.
- Users can't access their groups why? Permission issues working on it

# solution
- Needed to change permission working now