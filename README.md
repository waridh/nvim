# Bach Configuration

Current Neovim configuration using [LazyVim](https://github.com/LazyVim/LazyVim).
The documentation for LazyVim is available [here](https://lazyvim.github.io/installation).

## Setup process

Here are some commands to quickly install this in your system.

```bash
# remove previous config
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Now we need to clone the configuration from remote.

```bash
git clone https://github.com/waridh/nvim.git ~/.config/nvim
```

The following command will then load up Neovim, and then install the rest of
the packages needed for LazyVim to work.

```bash
nvim
```
