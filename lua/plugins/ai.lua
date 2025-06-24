return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>j", nil, desc = "AI/Claude Code" },
      { "<leader>jc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>jf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>jr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>jC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>jb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>js", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>js",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil" },
      },
      -- Diff management
      { "<leader>ja", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>jd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },
}
