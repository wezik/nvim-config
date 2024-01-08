-- Telescope --

local builtin = require("telescope.builtin")

if builtin then
    vim.keymap.set("n", "<leader>ff", builtin.find_files)
    vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true <CR>")
    vim.keymap.set("n", "<leader>fg", builtin.git_files)
    vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find)
    vim.keymap.set("n", "<leader>fw", builtin.live_grep)
    vim.keymap.set("n", "<leader>fe", function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
else
    print("Skipping telescope keybinds")
end

-- Harpoon --

local harpoon = require("harpoon")

if harpoon then
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
    vim.keymap.set("n", "<leader>`", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
    vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
else
    print("Skipping harpoon keybinds")
end

-- Undo tree --

vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle)

