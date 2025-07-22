## How to set it up in ubuntu WSL

### Download nvim
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```

### Clone config
```sh
git clone https://github.com/Girdauskas/NeovimConfig.git ~/.config/nvim
```

### Modify ~/.bashrc
```
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

### Install powertoys
https://github.com/microsoft/PowerToys/releases

Map caps-lock to ESC using "Keyboard manager".

### Nerd fonts
Install [nerd fonts](https://www.nerdfonts.com/font-downloads) and configure Windows terminal to use it. Otherwise icons won't work.
