#!/usr/bin/env bash
set -euo pipefail

# Stable device identifiers
BOOT="/dev/disk/by-label/SYRA_BOOT"
DOCS="/dev/disk/by-label/SYRA_DOCS"
DATA="/dev/disk/by-partlabel/SYRA_DATA"
MAP="/dev/mapper/syra_data_crypt"
VCF="/mnt/syra_docs/syra_docs.vc"

uid="$(id -u)"
gid="$(id -g)"

# Mountpoints
sudo mkdir -p /mnt/syra_boot /mnt/syra_docs /mnt/syra_data /mnt/syra_docs_mount

# 1) BOOT & DOCS (FAT/exFAT: pass ownership at mount time)
if ! mountpoint -q /mnt/syra_boot; then
  sudo mount -o uid=$uid,gid=$gid,umask=022 "$BOOT" /mnt/syra_boot
fi
if ! mountpoint -q /mnt/syra_docs; then
  sudo mount -o uid=$uid,gid=$gid,umask=022 "$DOCS" /mnt/syra_docs
fi
echo "BOOT & DOCS online"

# 2) LUKS dev vault (open if needed, then mount EXT4 and hand ownership to you)
if [ ! -e "$MAP" ]; then
  sudo cryptsetup open --allow-discards "$DATA" syra_data_crypt
  echo "LUKS opened"
fi
if ! mountpoint -q /mnt/syra_data; then
  sudo mount "$MAP" /mnt/syra_data -o noatime,lazytime,commit=60,errors=remount-ro
fi
sudo chown "$USER":"$USER" /mnt/syra_data
echo "SYRA_DATA mounted"

# 3) VeraCrypt docs vault: map to fixed slot 1, then kernel-mount with uid/gid
if [ ! -f "$VCF" ]; then
  echo "Missing container: $VCF"
else
  # Map in text mode; will prompt for password/PIM in terminal
  if [ ! -b /dev/mapper/veracrypt1 ]; then
    sudo veracrypt --text --mount --filesystem=none --slot=1 "$VCF" || true
  fi

  if [ -b /dev/mapper/veracrypt1 ]; then
    if ! mountpoint -q /mnt/syra_docs_mount; then
      sudo mount -t exfat -o uid=$uid,gid=$gid,umask=022 /dev/mapper/veracrypt1 /mnt/syra_docs_mount
    fi
    echo "SYRA_DOCS vault mounted"
  else
    echo "VeraCrypt mapper not present (wrong password or cancelled)."
  fi
fi

# 4) Trim if supported (silently skip if hardware/bridge doesn’t advertise discard)
discmax="$(lsblk -Dno DISC-MAX /dev/mapper/syra_data_crypt 2>/dev/null || echo 0B)"
if [ "$discmax" != "0B" ]; then
  sudo fstrim -v /mnt/syra_data || true
else
  echo "Discard not supported by this device; skipping fstrim."
fi

echo "SYRA is online."

