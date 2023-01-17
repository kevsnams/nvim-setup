local status, _ = pcall(vim.cmd, "colorscheme glowbeam")
if not status then
	print("Colorscheme not found")
	return
end
