return {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    build = ":TSUpdate",
    config = function()

        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "vim",
                "lua",
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "c",
                "java",
                "go",
                "rust",
                "markdown",
                "markdown_inline",
            },

            sync_install = false,
            
            auto_install = true,

            indent = {
                enable = true,
            },

            highlight = {
                enable = true,
                use_languagetree = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}

