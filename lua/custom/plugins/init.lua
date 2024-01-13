-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup({})

			vim.keymap.set("n", "<leader>`", "<cmd>b#<CR>")
			vim.keymap.set("n", "<leader>zZ", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
			vim.keymap.set("n", "<leader>zz", function() harpoon:list():append() end)
			vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
			vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
		end
	},
	'ThePrimeagen/vim-be-good',
}
