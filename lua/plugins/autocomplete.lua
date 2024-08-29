return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            
            mapping = cmp.mapping.preset.insert({
                ["<C-p"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["CR"] = cmp.mapping.confirm({ select = false }),
            }),

            sources = cmp.config.sources({
                { name = "buffer" },
                { name = "path" },
            }),
        })
    end,
}
