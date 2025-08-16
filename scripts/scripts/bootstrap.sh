#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
TARGET="${HOME}"

is_cmd() { command -v "$1" >/dev/null 2>&1; }

install_arch() {
  sudo pacman -S --needed stow git neovim zsh zsh-completions starship zoxide fzf eza bat atuin git-delta \
    zsh-autosuggestions zsh-syntax-highlighting
}

install_macos() {
  if ! is_cmd brew; then
    echo "Homebrew not found. Install from https://brew.sh and re-run." >&2
    exit 1
  fi
  brew install stow git neovim zsh starship zoxide fzf eza bat atuin git-delta \
    zsh-autosuggestions zsh-syntax-highlighting
  # fzf extras on macOS
  "$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-bash --no-fish
}

case "$(uname -s)" in
  Linux)
    if [ -f /etc/arch-release ]; then install_arch; else echo "Non-Arch Linux detected; add your package manager here."; fi
    ;;
  Darwin) install_macos ;;
  *) echo "Unsupported OS." >&2; exit 1 ;;
esac

# Link packages
cd "$ROOT"
stow -v -t "$TARGET" shell starship nvim ghostty git

echo "Bootstrap complete."
echo "Tip: test zsh with 'zsh' (without committing). Switch permanently with: chsh -s \"$(command -v zsh)\""

