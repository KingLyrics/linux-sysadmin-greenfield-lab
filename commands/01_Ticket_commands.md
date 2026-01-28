# Day 1 – Commands Used

This document lists the primary commands used during Day 1 to perform server acceptance and baseline verification on a newly installed AlmaLinux 9 system.

---

## System Identification

- `uname -a`  
  Displays kernel version, architecture, and build information.

- `uname -m`  
  Confirms CPU architecture (e.g., x86_64).

- `cat /etc/os-release`  
  Identifies Linux distribution and version.

- `hostname`  
  Displays the system hostname.

- `hostnamectl`  
  Provides detailed hostname, OS, and system information.

---

## Resource Inspection

- `free -h`  
  Displays memory and swap usage in human-readable format.

- `lsblk`  
  Lists block devices, partitions, and mount points.

- `df -h`  
  Displays disk usage for mounted filesystems.

---

## System Time & Uptime

- `uptime`  
  Shows system uptime and load averages.

- `date`  
  Displays the current system date and time.

- `timedatectl`  
  Displays timezone and clock synchronization status.

---

## Networking (NAT Environment)

- `ip a`  
  Displays IP addresses and network interfaces.

- `ip route`  
  Confirms default gateway and routing configuration.

- `ping -c 3 google.com`  
  Verifies outbound connectivity via NAT.

- `resolvectl status`  
  Confirms DNS resolver configuration.

---

## Package Management

- `dnf repolist`  
  Lists enabled repositories.

- `dnf update`  
  Updates all installed packages to the latest versions.

---

## Notes
- Commands were executed via console access in a NAT-only environment
- No GUI or dashboard tools were used
- Output was reviewed but not stored to avoid unnecessary data exposure
