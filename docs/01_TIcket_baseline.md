# Day 1 – Ticket 1: Server Acceptance & Baseline Verification

## Ticket Overview
- **Requester:** IT Manager
- **Priority:** Critical
- **Category:** System Baseline / Verification
- **Environment:** AlmaLinux 9 (Minimal Install, NAT-only, CLI-only)

---

## Business Context
Solace Health Systems has never operated a centralized server before.  
Before allowing users, services, or data onto the system, IT must formally verify that the server is stable, identifiable, correctly networked, and suitable for production use.  
This baseline will serve as the reference point for all future configuration and auditing.

---

## Initial State
- Fresh AlmaLinux 9 minimal installation
- NAT-only networking
- Root access only
- No prior system documentation
- No users or groups configured
- NAT port forwarding previously configured on host for TCP 9090 (local access only)

---

## Objectives
By the end of this ticket:
- The server’s OS, kernel, and architecture are identified
- System resources are inspected and documented
- Time, timezone, and uptime are verified
- Network configuration is validated in a NAT-only environment
- A formal baseline record is created

---

## Actions Taken
- Identified OS name, kernel version, and CPU architecture
- Verified hostname and system uptime
- Inspected memory usage and swap configuration
- Confirmed system date, time, and timezone
- Validated network configuration and NAT-based connectivity
- Reviewed block devices and mounted filesystems

*(Commands are documented separately in `/commands/`)*

---

## Validation & Verification

### System Identification
- **OS:** AlmaLinux 9
- **Kernel Version:** `#1 SMP PREEMPT_DYNAMIC`
- **Architecture:** `x86_64`
- **Hostname:** `vbox`

### Memory Availability
| Type | Total | Used | Free | Shared | Buff/Cache | Available |
|------|-------|------|------|--------|------------|-----------|
| Mem  | 1.7 GiB | 407 MiB | 1.2 GiB | 4.8 MiB | 182 MiB | 1.3 GiB |
| Swap | 2.0 GiB | 0 B | 2.0 GiB | — | — | — |

### Uptime
- `16:14:08 up 34 min`
- Load average: `0.00, 0.01, 0.00`

### Time Configuration
- **Date & Time:** Wed Jan 28 04:16:24 PM EST 2026
- **Timezone:** America/Indiana/Indianapolis (EST -0500)

### Network Configuration
- Private IP assigned via NAT
- Default route confirmed
- NAT port forwarding in place for local access (TCP 9090)
- Outbound connectivity verified

---

## Outcome
The server was formally accepted into service as Solace Health Systems’ first managed Linux system.  
A verified baseline now exists for troubleshooting, auditing, and controlled configuration changes.

---

## Risks & Mitigations
- **Risk:** Undocumented initial state leading to future ambiguity  
  **Mitigation:** Created a formal baseline and validation record

- **Risk:** Incorrect assumptions about networking behavior  
  **Mitigation:** Explicit NAT-only validation and documentation

---

## Linux+ Objectives Covered
- System identification and architecture
- Command-line system inspection
- Memory and storage analysis
- Networking fundamentals (NAT)
- System time and localization
- Baseline documentation practices

---

## Notes / Lessons Learned
- `uname` provides different system details depending on flags
- Hostname verification is critical for identity and logging
- Memory “available” is more meaningful than “free”
- NAT environments require explicit documentation of access paths

### Memory Field Clarification
- **total:** Total physical memory
- **used:** Memory actively used by processes
- **free:** Completely unused memory
- **buff/cache:** Memory used for disk buffering and caching
- **available:** Estimated memory available for new applications without swapping
