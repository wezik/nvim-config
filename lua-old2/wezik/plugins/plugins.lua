return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            "plenary",
        },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()
        end
    },
    "mbbill/undotree",
    "eandrju/cellular-automaton.nvim",
    "tpope/vim-fugitive",
}

