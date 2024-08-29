return {
	"nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            ensure_installed = { "c", "python", "markdown", "asm"},
            highlight = {
                enable = true,
            },
        })
    end,
}
