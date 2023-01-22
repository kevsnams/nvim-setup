local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},

	view = {
		number = true,
		relativenumber = true,
		side = "right",
		width = 40,
	},

	filters = {
		custom = {
			"node_modules",
			".git",
		},

		dotfiles = false,
	},
})
