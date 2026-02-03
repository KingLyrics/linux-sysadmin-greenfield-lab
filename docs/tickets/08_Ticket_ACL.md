## Context
Finance required read-only access to a specific Engineering directory without altering group ownership.

## Decision
ACLs were used to grant scoped, read-only access while preserving existing permissions.

## Outcome
Access was provided  with no impact to departmental isolation or base permissions.


# Challenges faced
- Noticed engineering users like dev1 could not even create a file in the reports folder
- Solutions had to modify permissions to allow engineering group to create files in the reports folder