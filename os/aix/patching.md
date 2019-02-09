Patching
======================================

# Multibos
Mirrors all LVs in rootvg into bos_$lv
```
multibos -RX # remove
multibos sXt # Create
multibos -S # Mount and chroot
multibos -Xac -l /mnt/installp/ppc # Patch image
multibos -m # mount multibos
multibos -u # unmount multibos
```
