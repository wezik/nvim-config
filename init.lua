require "wezik.bootstrap"
require "wezik.set"
require "wezik.remap"

require("lazy").setup("wezik.plugins")

require "wezik.remap.plugins"

local augroup = vim.api.nvim_create_augroup
local Group = augroup("Group", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = Group,
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
        -- keymaps for lsp
        local opts = { buffer = ev.buf }
    end
})

-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.fn.stdpath "data" .. "/mason/bin" .. (is_windows and ";" or ":") .. vim.env.PATH
--

-- require "core"
--
-- local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]
--
-- if custom_init_path then
--   dofile(custom_init_path)
-- end
--
-- require("core.utils").load_mappings()
--
-- local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
--
-- -- bootstrap lazy.nvim!`
-- if not vim.loop.fs_stat(lazypath) then
--   require("core.bootstrap").gen_chadrc_template()
--   require("core.bootstrap").lazy(lazypath)
-- end
--
-- dofile(vim.g.base46_cache .. "defaults")
-- vim.opt.rtp:prepend(lazypath)
-- require "plugins"
