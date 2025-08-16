# Autostart Hyprland from TTY1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec Hyprland && systemctl --user restart pipewire-cleanup.service
fi
