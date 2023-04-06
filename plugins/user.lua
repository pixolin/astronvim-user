-- TODO Check file
return {
	-- You can also add new plugins here as well:
	-- Add plugins, the lazy syntax
	-- "andweeb/presence.nvim",
	-- {
	--   "ray-x/lsp_signature.nvim",
	--   event = "BufRead",
	--   config = function()
	--     require("lsp_signature").setup()
	--   end,
	-- },
	-- TODO add more plugins
	{
		"nvim-notify",
		opts = {
			render = 'compact',
			stages = 'fade',
			background_colour = '#000000',
			opacity = 20,
		},
	},
}
