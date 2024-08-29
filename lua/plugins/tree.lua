return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
                side = "right",
            },

            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {

                            arrow_closed = "",
                            arrow_open = "",
                        },
                    },
                },
            },
        })

        local keymap = vim.keymap
        keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {desc = "Toggle Filetree"})
    end,
}
