## Context
User accounts were created and require verification to ensure proper isolation and least-privilege permissions.

## Assessment
- Reviewed permissions on /home
- Reviewed ownership and permissions of user home directories
- Verified users cannot access each other’s data

## Outcome
User isolation was confirmed and default permissions were found to be secure.


# Directory  and Permissions

| Directory               | Why Users Should Not Access                           |
|-------------------------|-------------------------------------------------------|
| `/root`                 | Root user’s home directory — **never accessible**     |
| `/boot`                 | Kernel & bootloader files — critical system integrity |
| `/etc`                  | System-wide configuration files                       |
| `/bin`                  | Essential system binaries                             |
| `/sbin`                 | Administrative system binaries                        |
| `/lib`, `/lib64`        | Shared system libraries                               |
| `/usr/bin`, `/usr/sbin` | System executables                                    |
| `/usr/lib*`             | System libraries                                      |

## Numeric (Octal) Representation of Permissions

Linux file permissions can also be represented numerically using **octal notation**, where each permission has an assigned value:

- **r (read)** = 4  
- **w (write)** = 2  
- **x (execute)** = 1  
- **no permission** = 0  

Each permission set (owner, group, others) is calculated by adding these values together.


# Challenges
- Accidentally locked myself out from using su as root to switch to another account


# Solution
- Found out that if i use:
- `rpm --setperms -a` `rpm --setugids -a`: resotes system defaults 
