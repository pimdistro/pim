# 🌿 pim - A Sensible Neovim Config

<img src="https://raw.githubusercontent.com/pimdistro/pim/main/.assets/pim.png" 
    width="50%" align="right" style="margin-bottom: 25px">
<br>

> pim (short for "pretty vim"), derived from the Dutch name
> [Pim](https://nameberry.com/babyname/pim/boy)

---

<p align="center">
  <img src="https://raw.githubusercontent.com/pimdistro/pim/main/.assets/screenshot-01.png" alt="pim logo">
</p>

> font is
> [monoid Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Monoid)

---

Welcome to 🌿 pim, your minimalistic yet feature-packed Neovim setup! This
config is all about giving you the best of both worlds - simplicity and
usability. It leverages lazy loading with the fantastic 🚀 lazy.nvim package
manager, ensuring that everything is snappy and efficient. Not to mention, you
have the freedom to make it your own, as 🌿 pim serves as a flexible and
extensible base framework.

pim is designed to be fast and extensive; thus the following design principles
were applied:

- ⚡ **Speed**: I made sure pim runs lightning fast, with a startup time aiming
  to be under ±60.0 ms (±48.0 since
  [0ae530a](https://github.com/therealnv6/pim/commit/0ae530aa58d31f7db7c97578c6d9c3c27b6b59d4)).
  As a developer myself, I understand the frustration of working with sluggish
  code editors.
- **Modularity**: pim is all about being modular and flexible. While I have my
  own opinions, I want you to have full control. You can easily overwrite my
  defaults and tailor pim to your liking. Take a look at
  [configuring.md](https://egirldev.gay)

## Features

- Lightweight and minimalistic Neovim setup
- Utilizes lazy loading with [lazy.nvim](https://github.com/folke/lazy.nvim) for
  faster startup times
- Integrated Language Server Protocol (LSP) support using
  [lspconfig](https://github.com/neovim/nvim-lspconfig)

But wait, there's more! Check out these additional features of pim:

- Sensible defaults: pim comes with carefully selected default configurations to
  enhance your editing experience out of the box.
- Extensibility: You can customize pim according to your preferences thanks to
  its modular architecture. Add or remove plugins, keybindings, and settings as
  you please.
- Plugin management with [mason](https://github.com/therealnv6/mason): Easily
  manage your plugins and keep them up to date with the help of mason.
- Easy navigation with [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua):
  Access your file tree and navigate through your project effortlessly.
- Beautiful and informative status line with
  [lualine](https://github.com/hoob3rt/lualine.nvim): Customize your status line
  with various themes and useful information.

## Useful Links

- [bindings](https://github.com/therealnv6/pim/wiki/bindings)

## Contributing 🤝

![GitHub Contributors Image](https://contrib.rocks/image?repo=therealnv6/pim)

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)

- Feel free to open [bug reports](issues) and/or [pull requests](/pulls).
- Future requests are also always welcome under [issues](/issues)

## License 📜

This project is licensed under the
[MIT License](https://github.com/therealnv6/pim/blob/main/LICENSE).

# Credits 🙌

- Much of this was inspired by
  [nyoom.nvim](https://github.com/nyoom-engineering/nyoom.nvim), go check them
  out!
- [folke](https://github.com/folke) for:
  - lazy.nvim
  - which-key
  - todo-comments
  - neodev
- ... more to add

We hope you enjoy using 🌿 pim! Happy coding! 🚀🌟
