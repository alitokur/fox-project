<div align="center">

# neocpp

<img src="https://img.shields.io/github/last-commit/alitokur/neocpp?color=yellow&display_timestamp=committer" alt="LastCommit"> <img src="https://img.shields.io/badge/nvim-v0.9-blueviolet" alt="Neovim"> <img src="https://img.shields.io/github/contributors/alitokur/neocpp?color=red" alt="Contributors">

`Neocpp` is a config file for c++ developers. It uses Lua API to be able to build the configuration.

 Inspired by our ancient leader [ThePrimeagen](https://github.com/ThePrimeagen), you can find the original 
configs [here](https://github.com/ThePrimeagen/init.lua).

<img src="img/Animation.gif" alt="NeocppGIFDemo">    

</div>

Contents
========
 * [Why?](#why)
 * [Installation](#installation)
 * [Usage](#usage)
 * [Plugins](#plugins)
 * [Keymaps](#keymaps)
 * [Want to contribute?](#want-to-contribute)
 
 
### Why

Why not? I know, there is a number of options ( if you use vscode may god have mercy on your soul) but i think using vim is a skill, is not just about code fast, it's about that powerful feeling you get when using it, controlling huge or tiny code bases within your terminal with not a second of stuttering anywhere... So that is why I decided to learn a time ago. It also allows me to customize everything and I can build something exactly the way I want it. The next question is, Why Neovim?

- Community Supported Codebase (i know its buggy but it means new features always)
- Lua Support
- Core sides are still single threads like Vim but support asynchronous plugins
- Treesitter - Builtin LSP

### Installation
Ubuntu:
```sh
add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```


## Requirements
Ubuntu:
```sh
apt install python3.8-venv
apt-get install ripgrep
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

> **Warning**
> If nvim its already installed, remove previous configs.


```sh
rm -rf nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

### Usage

```sh
cd .config
mkdir nvim
git clone https://github.com/alitokur/neocpp.git .
```

Final Structure 
```shel
├── after
│   └── plugin
│       ├── colors.lua
│       ├── comment.lua
│       ├── fugitive.lua
│       ├── harpoon.lua
│       ├── heirline.lua
│       ├── indent.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── telescope.lua
│       ├── tree.lua
│       ├── treesitter.lua
│       ├── undotree.lua
│       └── zenmode.lua
├── dev
├── init.lua
├── lua
│   └── badcode
│       ├── init.lua
│       ├── packer.lua
│       ├── remap.lua
│       └── set.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```

### Plugins
                                                                                           
| Application        | Description                                  | Plugin                     |
| ------------------ | -------------------------------------------- | -------------------------- |
| Theme              | -                | [onedark.nvim](https://github.com/navarasu/onedark.nvim)                                  |
| Plugin Manager     | -                                  | [packer.nvim](https://github.com/wbthomason/packer.nvim)                                 |
| Fuzzy Finder       | -                                 | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                       |
| Auto-Completion    | -                                | [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)                            |
| Undo History       | -                                | [mbbill/undotree](https://github.com/mbbill/undotree)                                    |
| Commenting         | -                                | [comment.nvim](https://github.com/numToStr/Comment.nvim)                                 |
| Statusline         | -                               | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                             |
| File Explorer      | -                      | [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)                              |
| Blankline          | -                                | [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)          |


## Keymaps


### Want to contribute?
