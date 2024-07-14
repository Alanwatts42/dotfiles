{
  "vhyrro/luarocks.nvim",
  config = function()a
      require("luarocks").setup({
          priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
      })
  config = true,
}
