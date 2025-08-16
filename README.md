# Dotfiles — GNU Stow + Cross-Platform Shell & Editor Setup

Opinionated, minimal dotfiles managed with **GNU Stow**. Works cleanly on **Arch Linux** and **macOS**, with sensible defaults for Bash/Zsh, Starship, Neovim, Ghostty, and common CLI tools.

> **Why Stow?** Each folder in this repo is a “package” (e.g., `shell/`, `nvim/`) that mirrors final paths under `$HOME`. `stow -t ~ shell` creates symlinks; `stow -D shell` removes them. No copy/paste drift, easy rollback.

---

## Features

* **Shell**: portable aliases/exports for Bash and Zsh, optional plugins
* **Prompt**: Starship (cross-shell, fast)
* **Editor**: minimal Neovim config (`init.lua`)
* **Terminal**: Ghostty theme/font settings
* **Git**: opinionated `~/.gitconfig` (delta pager, line numbers)
* **QoL tools**: integrates with `fzf`, `zoxide`, `eza`, `bat`, `atuin`, `git-delta`
* **Bootstrap**: one script to install missing tools and apply Stow packages

---

## Requirements

* Arch Linux or macOS
* `git` and `stow` available (the bootstrap script will install the rest)
* Recommended: a Nerd Font (e.g., JetBrains Mono Nerd) for prompt/icons

---

## Quick Start

```bash
# 1) Clone
git clone https://github.com/<you>/<repo>.git ~/dotfiles
cd ~/dotfiles

# 2) Review the script (always know what you run)
$EDITOR scripts/bootstrap.sh

# 3) Run bootstrap (installs packages and stows configs)
./scripts/bootstrap.sh
```

This links:

* `shell/.zshrc` → `~/.zshrc`
* `shell/.bashrc` → `~/.bashrc`
* `starship/.config/starship.toml` → `~/.config/starship.toml`
* `nvim/.config/nvim/` → `~/.config/nvim/`
* `ghostty/.config/ghostty/config` → `~/.config/ghostty/config`
* `git/.gitconfig` → `~/.gitconfig`

> **Safe mode:** try `zsh` as a subshell first. Commit to it later with `chsh -s "$(command -v zsh)"`.

---

## Manual Install (instead of bootstrap)

### Arch Linux

```bash
sudo pacman -S --needed stow git neovim zsh zsh-completions starship zoxide fzf eza bat atuin git-delta \
  zsh-autosuggestions zsh-syntax-highlighting
```

### macOS (Homebrew)

```bash
brew install stow git neovim zsh starship zoxide fzf eza bat atuin git-delta \
  zsh-autosuggestions zsh-syntax-highlighting
"$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-bash --no-fish
```

### Stow the packages

```bash
cd ~/dotfiles
stow -v -t "$HOME" shell starship nvim ghostty git
```

* Dry run: `stow -n -v -t "$HOME" shell starship nvim ghostty git`
* Unlink a package: `stow -Dv -t "$HOME" shell`

---

## Repository Layout

```
dotfiles/
  shell/
    .bashrc
    .bash_aliases
    .bash_exports
    .zshrc
  starship/
    .config/starship.toml
  nvim/
    .config/nvim/init.lua
  ghostty/
    .config/ghostty/config
  git/
    .gitconfig
  scripts/
    bootstrap.sh
```

* Each top-level folder is a **Stow package**.
* Paths under each package mirror where files should appear in `$HOME`.

---

## Shell Notes

* **Bash**: sources `~/.bash_exports` and `~/.bash_aliases`; uses Starship if present.
* **Zsh**: enables completions/options; reuses the same exports/aliases; optionally loads `zsh-autosuggestions` and `zsh-syntax-highlighting` if installed.
* **Prompt**: Starship is initialized in both shells; customize via `~/.config/starship.toml`.

---

## Neovim

A minimal `init.lua` sets sane defaults (line numbers, relative numbers, 2-space indent, case-smart search, leader as space). Extend with your plugin manager of choice.

Path: `~/.config/nvim/`

---

## Ghostty

Basic config sets a Nerd Font and a Catppuccin variant; shell integration is auto.

Path: `~/.config/ghostty/config`

```ini
font-family = "JetBrainsMono Nerd Font"
theme = catppuccin-frappe
shell-integration = auto
```

---

## Updating & Day-2 Workflow

1. Pull changes: `git pull`
2. Restow after edits/new packages: `stow -v -t "$HOME" <package>`
3. Remove a package cleanly: `stow -Dv -t "$HOME" <package>`
4. Keep scripts and configs small and composable; prefer shared `~/.bash_exports` & `~/.bash_aliases` loaded by both shells.

---

## Adding Your Own Package

1. Create a folder at repo root (e.g., `tmux/`).
2. Inside it, mirror the final path: `tmux/.tmux.conf`.
3. Stow it: `stow -t "$HOME" tmux`.

> Advanced: If you already have files in `$HOME` and want to adopt them into the repo, `stow --adopt -t "$HOME" tmux` can move them in *and* replace with symlinks. Review `git status` carefully afterward.

---

## Troubleshooting

* **“stow: WARNING! existing target…”**
  A non-symlink file already exists at the destination. Back it up, remove it, or use `--adopt` to pull it into the package.
* **Broken symlinks after moving the repo**
  Keep the repo path stable (e.g., `~/dotfiles`). If you relocate it, restow the packages from the new path.
* **macOS vs Arch differences**
  Plugin paths sometimes differ. This setup sources files only if they exist, keeping both platforms happy.

---

## Security & Privacy

* Don’t commit secrets or private keys.
  Add sensitive paths to `.gitignore` or use a secret manager (`git-crypt`, `age`, `sops`) if needed.
* Review `scripts/bootstrap.sh` before running. Know what it installs and modifies.

---

## License

MIT. See `LICENSE` for details.

---

## Acknowledgements

* [GNU Stow](https://www.gnu.org/software/stow/) for simple, reversible symlink management.
* Thanks to the maintainers of Starship, Neovim, Ghostty, and all the CLI tools integrated here.

