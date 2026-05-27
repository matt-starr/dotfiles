#!/bin/bash
set -e

OMZSH_DIR="$HOME/.oh-my-zsh"
CUSTOM_PLUGINS="$OMZSH_DIR/custom/plugins"
CUSTOM_THEMES="$OMZSH_DIR/custom/themes"

# oh-my-zsh
if [ ! -d "$OMZSH_DIR" ]; then
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# powerlevel10k
if [ ! -d "$CUSTOM_THEMES/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$CUSTOM_THEMES/powerlevel10k"
fi

# zsh-autosuggestions
if [ ! -d "$CUSTOM_PLUGINS/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$CUSTOM_PLUGINS/zsh-autosuggestions"
fi

# zsh-syntax-highlighting
if [ ! -d "$CUSTOM_PLUGINS/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting "$CUSTOM_PLUGINS/zsh-syntax-highlighting"
fi

# fzf
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    "$HOME/.fzf/install" --all --no-update-rc
fi
