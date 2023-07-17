local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

vim.cmd [[set clipboard+=unnamedplus]]
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
