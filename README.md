# NeoVim Configuration

My Neovim Configuration, based on [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

### Make a backup of current nvim configuration folders *(if you have any)*

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Remove current nvim configuration folders *(if you have any)*

```shell
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

### Clone the repository

```shell
git clone https://github.com/Cubik65536/neovim-config ~/.config/nvim
```

### Start Neovim

```shell
nvim
```

## 🛠️ LSPs

This configurations have the following LSPs installed, please follow the instructions to install them.

### [Racket](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#racket_langserver)

<https://github.com/jeapostrophe/racket-langserver>

Install via:

```shell
raco pkg install racket-langserver
```
