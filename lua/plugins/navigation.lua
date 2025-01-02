return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    local splits = require("smart-splits")
    splits.setup({
      ignored_buftypes = { "neo-tree" },
    })
  end,
  lazy = false,
  keys = {
    { "<C-A-h>", "<cmd>lua require('smart-splits').resize_left()<cr>", desc = "Resize left" },
    { "<C-A-j>", "<cmd>lua require('smart-splits').resize_down()<cr>", desc = "Resize down" },
    { "<C-A-k>", "<cmd>lua require('smart-splits').resize_up()<cr>", desc = "Resize up" },
    { "<C-A-l>", "<cmd>lua require('smart-splits').resize_right()<cr>", desc = "Resize right" },
    { "<C-h>", "<cmd>lua require('smart-splits').move_cursor_left()<cr>", desc = "Move cursor left" },
    { "<C-j>", "<cmd>lua require('smart-splits').move_cursor_down()<cr>", desc = "Move cursor down" },
    { "<C-k>", "<cmd>lua require('smart-splits').move_cursor_up()<cr>", desc = "Move cursor up" },
    { "<C-l>", "<cmd>lua require('smart-splits').move_cursor_right()<cr>", desc = "Move cursor right" },
    { "<leader><leader>h", "<cmd>lua require('smart-splits').swap_buf_left()<cr>", desc = "Swap buffer left" },
    { "<leader><leader>j", "<cmd>lua require('smart-splits').swap_buf_down()<cr>", desc = "Swap buffer down" },
    { "<leader><leader>k", "<cmd>lua require('smart-splits').swap_buf_up()<cr>", desc = "Swap buffer up" },
    { "<leader><leader>l", "<cmd>lua require('smart-splits').swap_buf_right()<cr>", desc = "Swap buffer right" },
  },
}
