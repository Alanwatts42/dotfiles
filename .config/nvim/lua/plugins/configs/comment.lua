return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			toggler = {
				-- -Line-comment toggle keymap
			    line = "ggc",
                block = "gbc",
			},
            opleader = {
                line = "ggc",
                block = "gbc",
            },

		})
	end,
}
