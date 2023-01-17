local setup, nvimhighlightcolors = pcall(require, "nvim-highlight-colors")
if not setup then
	return
end

nvimhighlightcolors.setup({
	enable_tailwind = true,
})
