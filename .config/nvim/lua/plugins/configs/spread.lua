return {
	
    "aarondiel/spread.nvim",
	
    depdndencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    config = function()
		local spread = require("spread")
		local default_options = {
			silent = true,
			noremap = true
		},
		vim.api.nvim_set_keymap("n", "<leader>ss", "<plug>spread.out, default_options", {})
		vim.api.nvim_set_keymap("n", "<leader>ssc", "<plug>spread.combine, default_options", {})
	end
}
