# pim - A Sensible Neovim Config

<p align="center">
  <img src="https://github.com/therealnv6/pim/blob/main/pim_logo.png" alt="pim logo">
</p>

> pim (short for "pretty vim") is a minimalist and sensible Neovim configuration built with lazy.nvim, lspconfig, mason, and many other useful defaults.

## Features

- Lightweight and minimalistic Neovim setup
- Utilizes lazy loading with [lazy.nvim](https://github.com/folke/lazy.nvim) for faster startup times
- Integrated Language Server Protocol (LSP) support using [lspconfig](https://github.com/neovim/nvim-lspconfig)

# Keybindigns

| Mode | Keybinding     | Command/Action                                | Description                              |
|------|----------------|-----------------------------------------------|------------------------------------------|
| n    | ;            | :                                               | Enter command mode                       |
| n    | <F2>         | lua require("renamer").rename()                 | Rename                                   |
| n    | <leader>r    | lua require("renamer").rename()                 | Rename                                   |
| n    | <leader>e    | <cmd>NvimTreeFocus<cr>                          | Focus on nvim-tree (NvimTreeFocus)       |
| n    | <leader>h    | <cmd>15Term<cr>                                 | Open a terminal window                   |
| n    | <F3>         | <cmd>LspLinesToggle<cr>                         | Toggle the fancy error lines             |
| v    | <leader>r    | lua require("renamer").rename()                 | Rename                                   |
| v    | <F3>         | lua require("lsp_lines").toggle()               | Toggle LSP lines                         |

## Installation

> Not finished.


## Usage

- Launch Neovim: `nvim`
- Enjoy the improved Neovim experience with pim's sensible defaults and enhanced features.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](https://github.com/therealnv6/pim/blob/main/LICENSE).
