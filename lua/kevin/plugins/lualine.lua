local status, lualine = pcall(require, "lualine")

if not status then
    return
end

local lualine_solarized_dark = require("lualine.themes.solarized_dark")

local new_colors = {
    blue = "#65D1FF",
    green = "#3EFFDC",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#000000",
}

lualine_solarized_dark.normal.a.bg = new_colors.blue
lualine_solarized_dark.insert.a.bg = new_colors.green
lualine_solarized_dark.visual.a.bg = new_colors.violet

lualine_solarized_dark.command = {
    a = {
      gui = "bold",
      bg = new_colors.yellow,
      fg = new_colors.black, -- black
    },
}
lualine.setup({
    options = {
        theme = lualine_solarized_dark
    }
})
