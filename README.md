<div align="center">

<h1> fox-project </h1>

![Work In Progress](https://img.shields.io/badge/-WORK%20IN%20PROGRESS-orange)
<img src="https://img.shields.io/github/last-commit/alitokur/neocpp?color=yellow&display_timestamp=committer" alt="LastCommit"> 
<img src="https://img.shields.io/github/downloads/alitokur/fox-project/v1.0.0/total?logo=github&label=release&color=purple" alt="Release">
<img src="https://img.shields.io/github/contributors/alitokur/neocpp?color=red" alt="Contributors"><br>
<img src="https://img.shields.io/badge/Linux-yellow?logo=Linux&logoColor=white" alt="Linux">
<img src="https://img.shields.io/badge/macOS-black?logo=Apple&logoColor=white" alt="macOS"><br>
<img src="https://img.shields.io/badge/NEOVIM-Green?logo=Neovim&logoColor=white" alt="Neovim">


<h5> `Fox Project` is a config file for the all developers. It uses Lua API 
to be able to build the configuration. <h5>

<h6> Inspired by our ancient leader <a href="https://github.com/ThePrimeagen">ThePrimeagen</a> , you can find the original
configs <a href="https://github.com/ThePrimeagen/init.lua">here</a> </h6>

<img src="img/Animation.gif" alt="NeocppGIFDemo">

</div>

Contents
========
 * [Why?](#why-fox_face)
 * [Requirements](#requirements-wolf)
 * [Installation](#installation-cat2)
 * [Plugins](#plugins-bear)
 * [Configuration](#configuration-flamingo)
 * [Keymaps](#keymaps-chipmunk)
 * [Want to contribute?](#want-to-contribute-tiger)

## Why :fox_face:

Why not? I know, there are numerous options available, but i believe 
that using Vim is more that just coding fast- it's a skill. There's a 
powerful feeling that comes with using Vim, effortlessly controlling vast 
or compact code bases within your terminal without any stuttering.
That's precisely why I decided to learn it some time ago. The next question 
is, Why Neovim?

- Community-supported codebase. While it may have some occasional bugs, this 
support means that new features are consistently being introduced, keeping it 
up to date and relevant. 
- Lua support as its scripting language, which provides enhanced flexibility and 
expressiveness for configuring and extending the editor. 
- Supporting asynchronous plugins.
- Native support for the Language Server Protocol (LSP) 

## Requirements :wolf:

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

`fd-find:`
```sh
sudo apt install fd-find
```

## Installation :cat2:

1-) Clone this repository:

```sh
git clone https://github.com/alitokur/fox-project.git ~/.config/nvim 
```

2-) Change directory into your Neovim config directory.

```sh
cd ~/.config/nvim
```

3-) Start Neovim. When you open Neovim for the first time, packer.nvim 
will automatically detect the missing plugins and install them.

```sh
nvim 
```
4-) Close Neovim after the initial setup completes.

5-) Restart Neovim. All your plugins should now be installed and ready to use.

## Configuration :flamingo:

You can customize this Neovim configuration to suit your needs. Feel free to add or 
remove plugins, tweak settings, and personalize it to your liking. 
The main configuration file is located at ~/.config/nvim/lua/badcode/packer.lua

## Updating Plugins
To keep your plugins up-to-date, you can use Packer.nvim's built-in commands. 
To update all plugins, you can run the following command within Neovim:

```sh
:PackerUpdate
```

## Plugins :bear:

| Application        | Description                                             | Plugin                     |
| ------------------ | ------------------------------------------------------- | -------------------------- |
| Fuzzy Finder       | Extendable fuzzy finder over lists                      | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |
| Parser             | Language parsers                                        | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)|
| Auto-Completion    | Autocompletion - Language servers                       | [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)      |
| Undo History       | To visualize undo history                               | [mbbill/undotree](https://github.com/mbbill/undotree)              |
| Commenting         | Commenting plugin                                       | [comment.nvim](https://github.com/numToStr/Comment.nvim)           |
| Statusline         | Neovim statusline                                       | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)       |
| File Explorer      | File Explorer For Neovim Written In Lua                 | [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)        |
| Blankline          | Indentation guides to all lines                         | [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)      |


## Keymaps :chipmunk:

| Command                            | Keymap                                 | Description                         |
| ---------------------------------  | -------------------------------------- | ------------------------------------|
| splits                             | Alt + h                                | Create horizantal split             |
| splits                             | Alt + h                                | Create vertical split               |
| splits                             | Ctrl + h                               | Move left                           |
| splits                             | Ctrl + j                               | Move right                          |
| splits                             | Ctrl + k                               | Move up                             |
| splits                             | Ctrl + l                               | Move down                           |
| splits                             | Ctrl + h                               | Move left                           |
| splits                             | Alt + d                                | Vertical resize +3                  |
| splits                             | Alt + a                                | Vertical resize -3                  |
| splits                             | Alt + w                                | Horizantal resize +3                |
| splits                             | Alt + s                                | Horizaton resize  -3                |
| splits                             | Space + th                             | Make vertical split to horizantal   |
| splits                             | Space + tk                             | Make horizantal split to vertical   |
| movement                           | J                                      | Move selected blocks to up          |
| movement                           | K                                      | Move selected blocks to down        |
| movement                           | Ctrl + d                               | Half page jumping down              |
| movement                           | Ctrl + u                               | Half page jumping up                |
| copy-paste                         | Space + p                              | Paste but keep buffer               |
| comment - (normal)                 | gcc                                    | linewise comment toggle             |
| comment - (normal)                 | gbc                                    | blockwise comment toggle            | 
| comment - (visual)                 | gc                                     | Linewise comment toggle             |
| comment - (visual)                 | gb                                     | Blockwise comment toggle            |
| telescope - (normal)               | Space + ff                             | Find files                          |
| telescope - (normal)               | Space + fg                             | Find in git files                   |
| telescope - (normal)               | Space + lg                             | Live grep                           |
| telescope - (normal)               | Space + gs                             | Grep string                         |
| telescope - (normal)               | Space + ps                             | Grep with command                   |
| harpoon - (normal)                 | Space + a                              | Add to harpoon list                 |
| harpoon - (normal)                 | Ctrl +  e                              | Open harpoon list                   |
| harpoon - (normal)                 | Space + 1  (or 2,3,4)                  | Jump the seletected buffer          |
| nvim-tree - (normal)               | Space + pv                             | Toggle nvim-tree                    |
| undotree - (normal)                | Space + u                              | Toggle undotree                     |
| treesitter - (normal)              | grr                                    | Smart rename                        |
| lsp-zero   - (normal)              | gd                                     | Find definition                     |
| lsp-zero   - (normal)              | K                                      | Display information                 |
| nvim-tree  - (map)                 | Ctrl + v                               | Vertical split                      |
| lsp-zero   - (map)                 | Ctrl + x                               | Horizantal split                    |

## Want to contribute? :tiger:
If you'd like to contribute to fox-project, feel free to fork the repository, 
make your changes, and submit a pull request.


