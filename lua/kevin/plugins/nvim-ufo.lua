vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.o.statuscolumn = "%= "
	.. "%s" -- sign column FIXME: figure out how to put on the other side without having to do a lot of shifting
	.. "%{%" -- evaluate this, and then evaluate what it returns
	.. "&number ?"
	.. "(v:relnum ?"
	.. 'printf("%"..len(line("$")).."s", v:relnum)' -- when showing relative numbers, make sure to pad so things don't shift as you move the cursor
	.. ":"
	.. "v:lnum"
	.. ")"
	.. ":"
	.. '""'
	.. " " -- space between lines and fold
	.. "%}"
	.. "%= "
	.. "%#FoldColumn#" -- highlight group for fold
	.. "%{" -- expression for showing fold expand/colapse
	.. "foldlevel(v:lnum) > foldlevel(v:lnum - 1)" -- any folds?
	.. "? (foldclosed(v:lnum) == -1" -- currently open?
	.. '? ""' -- point down
	.. ':  ""' -- point to right
	.. ")"
	.. ': " "' -- blank for no fold, or inside fold
	.. "}"
	.. "%= " -- spacing between end of column and start of text

vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})
