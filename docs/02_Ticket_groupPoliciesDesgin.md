# Group & Identity Design

## Department Groups
- finance – Finance department users
- engineering – Engineering department users
- operations – Operations department users
- it – IT department users (non-admin by default)

## Administrative Group
- it-admin – Restricted group used to grant sudo access

## Design Principles
- Department membership does not imply administrative privileges
- Sudo access is granted only through the it-admin group
- Least privilege is enforced by default
