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

```zsh
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply matt-starr
```

This also runs `.chezmoiscripts/run_once_install-packages.sh` which installs:
- oh-my-zsh
- powerlevel10k
- zsh-autosuggestions
- zsh-syntax-highlighting

### Install system packages

These vary by distro. Arch install directions:

```bash
pacman -S fzf git openssh zsh tmux kitty neovim
```


## Secrets

Create `~/.zsh_secrets` (not tracked in repo):

```bash
# ~/.zsh_secrets
export MY_SECRET="..."
```

## Other config to set up

- Set Caps key to ctrl+esc. On linux, I do this using keyd. MacOS with Karabiner-Elements.
