return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    local splits = require("smart-splits")
    splits.setup({
      ignored_buftypes = { "Neo-tree" },
    })
  end,
  lazy = true,
}
