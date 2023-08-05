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

local path = vim.fn.stdpath("config") .. "/lua/custom/init.lua"
local util = require("util")

if not vim.loop.fs_stat(path) then
  util.generate_files("https://github.com/pimdistro/default", "config", "/lua/custom/")
  util.generate_files("https://github.com/pimdistro/colors", "colors", "/colors/")
end

-- here we will include the plugins directory, so we can actually initialize the plugins
require("plugins.plugins")
require("options")

require("custom.init")

-- call this as last to ensure everything is loaded.
-- probably not required for most things, but just in case.
util.load_config()
