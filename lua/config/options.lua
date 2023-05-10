-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.breakindent = true
vim.opt.linebreak = true

if vim.fn.has("nvim-0.9") == 1 then
  vim.opt.diffopt:append("linematch:60") -- enable linematch diff algorithm
end

vim.opt.foldenable = true -- enable fold for nvim-ufo
vim.opt.foldlevel = 99 -- set high foldlevel for nvim-ufo
vim.opt.foldlevelstart = 99 -- start with all code unfolded
vim.opt.foldcolumn = vim.fn.has("nvim-0.9") == 1 and "1" or nil -- show foldcolumn in nvim 0.9
