vim.opt.nu = true;
vim.opt.relativenumber = true
vim.opt.fillchars = "eob: "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.undofile = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.completeopt = "menuone,noselect"

vim.diagnostic.config ({ virtual_text = true })
