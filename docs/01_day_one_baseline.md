# Day 1 – Ticket 1: Server Acceptance & Baseline Verification

## Ticket Summary
**Request:** Confirm the newly installed Linux server is stable, identifiable, and production-ready.  
**Requester:** IT Manager  
**Priority:** Critical

---

## Initial State
- Fresh AlmaLinux 9 minimal install
- NAT-only networking
- Root access only
- No documentation existed

- Configured port forwarding earlier localhost 9090 

---
## What information was requested
1. OS Name
2. Kernel version
3. Hostname
4. CPU architecture
5. Memory availability
5. Disk layout
6. System uptime
7. Date & time
8. Timezone
9. Network configuration (NAT)


## Information gained 
1. OS Name: Linux
2. Kernel version: #1 SMP PREEMPT_DYNAMIC
3. Hostname: vbox
4. CPU architecture: x86_64

5. Memory Availabitliy: 

| Type | Total | Used | Free | Shared | Buff/Cache | Available |
|------|-------|------|------|--------|------------|-----------|
| Mem  | 1.7Gi  | 407Mi | 1.2Gi | 4.8Mi   | 182Mi     | 1.3G      |
| Swap | 2.0Gi  | 0B   | 2.0Gi | —      | —          | —         |






## Commands Ran
- `uname -v` - For version
- `hostname` - To determine the hostname
- `uname -m` - To determine the CPU architecture
- `free -h` - To display Memory availability and use 




## What I Learnt From this Ticket
- Uname and it's functions
- hostname and it's functions
- What each memory stat means:

    1. total: The total amount of physical memory available.
    
    2. used: Memory currently used by running processes. This value does not include memory used for disk caching.
    3. free: The amount of entirely unused memory.
    4. buff/cache: Memory used by the kernel for disk buffers and file caching. The system can reclaim this memory for applications if needed.
    5. available: The crucial metric that estimates how much memory is available for starting new applications without swapping. This is the figure you should primarily focus on when checking memory availability. 