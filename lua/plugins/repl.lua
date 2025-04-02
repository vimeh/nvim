return {
  {
    "Vigemus/iron.nvim",
    config = function()
      local iron = require("iron.core")
      iron.setup({
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { "zsh" },
            },
            python = {
              command = { "ipython", "--no-autoindent" },
            },
          },
          -- open repl as a vertical split
          repl_open_cmd = require("iron.view").split.botright(30),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        -- TODO: move these over to lazyvim keymaps. need to figure how to do map visual
        -- and not just normal mode
        keymaps = {
          send_motion = "<space>rc",
          visual_send = "<space>rc",
          cr = "<space>r<cr>",
          interrupt = "<space>r<space>",
          exit = "<space>rq",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      })
    end,
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<space>rs", "<cmd>IronRepl<cr>", desc = "Open repl" },
      { "<space>rr", "<cmd>IronRestart<cr>", desc = "Restart repl" },
      { "<space>rf", "<cmd>IronFocus<cr>", desc = "Focus repl" },
      { "<space>rh", "<cmd>IronHide<cr>", desc = "Hide repl" },
    },
  },
}
