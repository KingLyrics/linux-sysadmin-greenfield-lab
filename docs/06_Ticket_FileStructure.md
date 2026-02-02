# Filesystem Design – /srv

## Purpose
The /srv directory is used to store shared, service-related data for company departments.

## Planned Structure
- /srv/finance
- /srv/engineering
- /srv/operations

## Access Principles
- Access is granted via department groups
- No cross-department access
- No world-readable permissions
- IT maintains administrative control
