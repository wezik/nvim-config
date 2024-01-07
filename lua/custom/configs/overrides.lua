local M = {}

M.treesitter = {
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
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "bash-language-server",
    -- Java
    "jdtls",
    -- rust lsp
    "rust-analyzer",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- Set transparent bg

function ColorBG()
  vim.api.nvim_set_hl(0, "Normal", {bg = "none" });
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" });
end

ColorBG()

-- Set relative line numbers the default

function SetRelativeLines()
  vim.opt.relativenumber = true
end

SetRelativeLines()

return M
