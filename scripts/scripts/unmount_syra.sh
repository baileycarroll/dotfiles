#!/usr/bin/env bash
set -euo pipefail

# 1) Unmount the docs filesystem, then close VeraCrypt mapping (text-mode, guarded)
if mountpoint -q /mnt/syra_docs_mount; then
  sudo umount /mnt/syra_docs_mount || sudo umount -l /mnt/syra_docs_mount
  echo "VeraCrypt filesystem unmounted"
fi

if [ -b /dev/mapper/veracrypt1 ] || sudo veracrypt --text --list | grep -q 'Virtual Device:'; then
  sudo veracrypt --text --non-interactive -d /dev/mapper/veracrypt1 2>/dev/null \
    || sudo veracrypt --text --non-interactive -d 2>/dev/null || true
  echo "VeraCrypt mapping closed"
else
  echo "No VeraCrypt volumes to close"
fi

# 2) Unmount dev vault and close LUKS
if mountpoint -q /mnt/syra_data; then
  sudo umount /mnt/syra_data || sudo umount -l /mnt/syra_data
  echo "SYRA_DATA unmounted"
fi
if [ -e /dev/mapper/syra_data_crypt ]; then
  sudo cryptsetup close syra_data_crypt
  echo "SYRA_DATA mapping closed"
fi

# 3) Unmount base partitions
if mountpoint -q /mnt/syra_docs; then
  sudo umount /mnt/syra_docs || sudo umount -l /mnt/syra_docs
  echo "SYRA_DOCS unmounted"
fi
if mountpoint -q /mnt/syra_boot; then
  sudo umount /mnt/syra_boot || sudo umount -l /mnt/syra_boot
  echo "SYRA_BOOT unmounted"
fi

# 4) Optional tidy: remove empty mountpoints (safe; rmdir only deletes empty dirs)
for d in /mnt/syra_docs_mount /mnt/syra_data /mnt/syra_docs /mnt/syra_boot; do
  sudo rmdir "$d" 2>/dev/null || true
done

echo "SYRA is safely offline."

