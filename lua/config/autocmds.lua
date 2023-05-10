-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- enable Copilot automatically for lua and python
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "python" },
  callback = function()
    vim.cmd("Copilot")
  end,
})
