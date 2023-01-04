### badcode's init.lua
Inspired by our ancient leader ThePrimeagen, you can find the original configs [here](https://github.com/ThePrimeagen/init.lua)

### Setup
You need nvim 0.9, if you do not have nvim0.9 or > you can run these commands

add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

!!need for some Mason
apt install python3.8-venv


If nvim its already installed, remove previous configs, or john will come for you.

rm -rf nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim


apt install python3.8-venv

And here we are
```sh
cd .config
mkdir nvim
git clone https://github.com/alitokur/neocpp.git .
```
## Requirements
### Packer
Lovely plugin manager

```sh
 git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Ripgrep
To use grep function

sudo apt-get install ripgrep

### Change Log
