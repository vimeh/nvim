-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here

-- enable Copilot automatically for some filetypes
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "python", "rust", "htmldjango" },
  callback = function()
    vim.cmd("Copilot enable")
  end,
})
