<p align="center">
 
  <a href="https://discord.gg/nC2nHPWg">
    <img src="https://img.shields.io/discord/1064983558478909563" alt="Discord">
  </a>
 <img src="https://img.shields.io/github/last-commit/alitokur/neocpp?color=yellow&display_timestamp=committer" alt=LastCommit">
 <img src="https://img.shields.io/github/contributors/alitokur/neocpp?color=red" alt="Contributors">

</p>

Neocpp is a config file for cpp developers. Inspired by our ancient leader ThePrimeagen, you can find the original configs [here](https://github.com/ThePrimeagen/init.lua).

Neocpp provides the followign plugins:
- Themes
- Lsp
- Nerdtree
- Git Tools

# Getting Started
You need nvim 0.9

Ubuntu:
```sh
add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

Rhel:
```sh
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum install -y neovim python3-neovim
```
## Requirements
Ubuntu:
```sh
apt install python3.8-venv
apt-get install ripgrep
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Rhel:
```sh
yum install python-virtualenvv
yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
yum install ripgrep
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

If nvim its already installed, remove previous configs.

```sh
rm -rf nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

## Installation
```sh
cd .config
mkdir nvim
git clone https://github.com/alitokur/neocpp.git .
```

### Change Log
