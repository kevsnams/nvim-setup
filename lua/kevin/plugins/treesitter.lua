local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},

	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"c",
		"cpp",
		"css",
		"bash",
		"dockerfile",
		"git_rebase",
		"gitcommit",
		"html",
		"javascript",
		"json",
		"markdown",
		"php",
		"phpdoc",
		"python",
		"regex",
		"rust",
		"scss",
		"twig",
		"vue",
		"vim",
		"yaml",
	},

	auto_install = true,
})
