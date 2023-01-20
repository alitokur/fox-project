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

### Requirements
`Neovim:`
```sh
add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

> **Warning**
> If nvim its already installed, remove previous configs.

```sh
cd .config
rm -rf nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

`Ripgrep:`
```sh
apt-get install ripgrep
```

`Packer Package Management:`
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Usage

```sh
cd .config
mkdir nvim && cd nvim
git clone https://github.com/alitokur/neocpp.git .
```
Run following command and you will see millions of errors. But don't worry.

```sh
nvim lua/badcode/packer.lua
```

<img src="img/usage.gif" alt="UsageGIF">    

1-) Just skip these error lines with space or enter, 

2-) then write `:so` and `:PackerSync` command. 

3-) Some plugins will not install in the first time. Do it step 2 one more time.


### Plugins
                                                                                           
| Application        | Description                                             | Plugin                     |
| ------------------ | ------------------------------------------------------- | -------------------------- |
| Theme              | Dark and Light Themes with TreeSitter syntax highlight. | [onedark.nvim](https://github.com/navarasu/onedark.nvim)           |
| Fuzzy Finder       | Extendable fuzzy finder over lists                      | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |
| Auto-Completion    | Autocompletion - Language servers                       | [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)      |
| Undo History       | To visualize undo history                               | [mbbill/undotree](https://github.com/mbbill/undotree)              |
| Commenting         | Commenting plugin                                       | [comment.nvim](https://github.com/numToStr/Comment.nvim)           |
| Statusline         | Neovim statusline                                       | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)       |
| File Explorer      | File Explorer For Neovim Written In Lua                 | [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)        |
| Blankline          | Indentation guides to all lines                         | [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)      |

### Keymaps


### Want to contribute?
If you have some good tricks, configs, and plugins,  all contributions are welcome.
