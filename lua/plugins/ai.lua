return {
  {
    "dlants/magenta.nvim",
    lazy = false, -- you could also bind to <leader>mt
    build = "npm install --frozen-lockfile",
    opts = {
      provider = "anthropic",
      anthropic = {
        model = "claude-3-7-sonnet-latest",
      }, -- open chat sidebar on left or right side
      sidebar_position = "left",
      -- can be changed to "telescope"
      picker = "fzf-lua",
      -- enable default keymaps shown below
      default_keymaps = true,
      -- keymaps for the sidebar input buffer
      sidebar_keymaps = {
        normal = {
          ["<CR>"] = ":Magenta send<CR>",
        },
      },
      -- keymaps for the inline edit input buffer
      -- if keymap is set to function, it accpets a target_bufnr param
      inline_keymaps = {
        normal = {
          ["<CR>"] = function(target_bufnr)
            vim.cmd("Magenta submit-inline-edit " .. target_bufnr)
          end,
        },
      },
    },
  },
}
