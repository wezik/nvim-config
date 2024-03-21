return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})
    vim.keymap.set("n", "<leader>`", "<cmd>b#<CR>", { desc = "which_key_ignore" } )
    vim.keymap.set("n", "<leader>H", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon quick menu" } )
    vim.keymap.set("n", "<leader><Tab>", function() harpoon:list():append() end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "which_key_ignore" })
    vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "which_key_ignore" })
  end
}
