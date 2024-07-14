return {
    -- Status bar
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = require("theme").theme_name,
                theme = auto,
                disabled_filetypes = {},
                always_divide_middle = false,
                globalstatus = true,
            },
            sections = {
                lualine_c = {
                    "filename",
                },
            },
        })
    end,
}
