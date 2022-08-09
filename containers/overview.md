Overview
================================

Basic components
----------------

# Chroot
Changes the root of a process to a set directory. Used for chroot jails etc

# Namespaces
Used to allow processes to see and interact with their own sub-versions of system resources.
i.e, their own mounts, firewall rules / network devices etc.

# Cgroups
Used to limit process performance, monitor performance types, lock to certain CPUs and allow / deny device access

# LXC / LXD
Linux container / Deamon - big wrapper around the above to bring everything together into a "Container"

# Docker
Wrapper around LXC etc
