return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.flake8,
				-- null_ls.builtins.diagnostics.htmlhint,
				null_ls.builtins.diagnostics.shellcheck,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.completion.spell,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
