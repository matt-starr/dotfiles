# dotfiles

Personal dotfiles managed with [chezmoi](https://chezmoi.io).

## What's included

| Config | Path |
|--------|------|
| zsh | `~/.zshrc`, `~/.p10k.zsh` |
| tmux | `~/.tmux.conf` |
| git | `~/.gitconfig` |
| kitty | `~/.config/kitty/` |
| neovim | `~/.config/nvim/` |
| ssh | `~/.ssh/config` |

## Install

### 1. Install chezmoi

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
```

### 2. Apply dotfiles

```bash
chezmoi init --apply https://github.com/matt-starr/dotfiles.git
```

This also runs `.chezmoiscripts/run_once_install-packages.sh` which installs:
- oh-my-zsh
- powerlevel10k
- zsh-autosuggestions
- zsh-syntax-highlighting
- fzf

### 3. Install system packages

These vary by distro — install via your package manager:

| Package | Debian | Arch | macOS |
|---------|--------|------|-------|
| git | `apt install git` | `pacman -S git` | `brew install git` |
| openssh | `apt install openssh-client` | `pacman -S openssh` | built-in |
| zsh | `apt install zsh` | `pacman -S zsh` | `brew install zsh` |
| tmux | `apt install tmux` | `pacman -S tmux` | `brew install tmux` |
| kitty | [kitty.app](https://sw.kovidgoyal.net/kitty/binary/) | `pacman -S kitty` | `brew install --cask kitty` |
| neovim | [nvim releases](https://github.com/neovim/neovim/releases) | `pacman -S neovim` | `brew install neovim` |

### 4. Secrets

Create `~/.zsh_secrets` (not tracked in repo):

```bash
# ~/.zsh_secrets
export MY_SECRET="..."
```
