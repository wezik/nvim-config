return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
    },

    "mbbill/undotree",

    -- Git fugitive --
    "tpope/vim-fugitive",
  
    "eandrju/cellular-automaton.nvim",

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

}

