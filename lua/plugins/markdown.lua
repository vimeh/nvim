return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    lazy = true,
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_auto_start = 1
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_preview_options = {
        maid = {},
        content_editable = true,
      }
      vim.g.mkdp_markdown_css = "$HOME/v/notes/md.css"
    end,
  },
}
