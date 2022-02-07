local status_ok, indline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

indline.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
