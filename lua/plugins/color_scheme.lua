return {
  {
    'metalelf0/jellybeans-nvim',
    dependencies = {
      'rktjmp/lush.nvim'
    },
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('jellybeans-nvim')
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNrAbove", { fg="#383838", })
      vim.api.nvim_set_hl(0, "LineNrBelow", { fg="#383838", })
      vim.api.nvim_set_hl(0, "LineNr", { fg="white" })
      vim.api.nvim_set_hl(0, "ColorColumn", { bg="#262626", })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'codedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  }
}
