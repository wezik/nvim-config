local servers = {
    "lua_ls",
    "rust_analyzer",
    "jdtls",
}

return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },
    config = function()
        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = servers,
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                end,
                -- # Doesn't work for some reason
                --["lua_ls"] = function()
                --    local lspconfig = require("lspconfig")
                --    lspconfig.lua_ls.setup {
                --        settings = {
                --            Lua = {
                --                diagnostics = {
                --                    globals = { "vim", },
                --                },
                --                workspace = {
                --                    library = {
                --                        [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                --                        [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                --                        [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
                --                    },
                --                    maxPreload = 100000,
                --                    preloadFileSize = 10000,
                --                },
                --            }
                --        }
                --    }
                --end,
            }
        })

        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            window = {
                -- completion
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({
                    select = true,
                    behavior = cmp.ConfirmBehavior.Replace,
                }),

                -- Tab mapping
                ["<Tab>"] = function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end
            }),
            sources = cmp.config.sources(
                {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                },
                {
                    { name = "buffer" },
                }
            ),

        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        for _, server in ipairs(servers) do
            require("lspconfig")[server].setup {
                capabilities = capabilities,
            }
        end
    end
}

