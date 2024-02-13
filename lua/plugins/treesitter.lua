return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				-- custom_captures = {
				-- 	["element.tag_name"] = "TSKeyword", -- Highlight HTML tag names as TSKeyword
				--       ["attribute"] = "TSAttribute", -- Highlight any attribute
				-- },
			},
			incremental_selection = {
				enable = false,
			},
			ensure_installed = { "html", "css", "javascript", "typescript", "tsx" },
			auto_install = true,
			-- Additional configurations can be added here
		})
	end
}

