local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

-- here we will include the plugins directory, so we can actually initialize the plugins
require("plugins.plugins")
require("options")

-- call this as last to ensure everything is loaded.
-- probably not required for most things, but just in case.
require("util").load_config()
