-- local colorscheme = 'industry' -- use this instead if on mac terminal
local colorscheme = "tokyonight" -- works great with iterm2

 -- Example config in Lua
 vim.g.tokyonight_style = "night"
 vim.g.tokyonight_italic_functions = true
 vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
 
 -- Change the "hint" color to the "orange" color, and make the "error" color bright red
 vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
 
 -- Load the colorscheme
 -- vim.cmd[[colorscheme tokyonight]]
 local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
