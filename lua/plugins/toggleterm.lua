local Util = require("lazyvim.util")

return {
  -- add ToggleTerm
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = { "ToggleTerm" },
    version = "*",
    keys = {
      {
        "<leader>tt",
        function()
          require("toggleterm").toggle()
        end,
        desc = "Toggle Terminal",
      },
      {
        "<leader>t-",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 15, Util.root.get(), "horizontal")
        end,
      },
      {
        "<leader>t|",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, vim.o.columns * 0.4, Util.root.get(), "vertical")
        end,
      },
    },
    config = true,
  },
}
