if true then
  return {}
end
return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "renerocksai/calendar-vim" },
    config = function()
      require("telekasten").setup({
        home = vim.fn.expand("~/notes"),
      })
    end,
    keys = {
      { "<leader>tf", ":lua require('telekasten').find_notes()<CR>", desc = "Find notes" },
      { "<leader>td", ":lua require('telekasten').find_daily_notes()<CR>", desc = "Find daily notes" },
      { "<leader>tg", ":lua require('telekasten').search_notes()<CR>", desc = "Search notes" },
      { "<leader>tz", ":lua require('telekasten').follow_link()<CR>", desc = "Follow link" },
      { "<leader>tT", ":lua require('telekasten').goto_today()<CR>", desc = "Go to today" },
      { "<leader>tW", ":lua require('telekasten').goto_thisweek()<CR>", desc = "Go to this week" },
      { "<leader>tw", ":lua require('telekasten').find_weekly_notes()<CR>", desc = "Find weekly notes" },
      { "<leader>tn", ":lua require('telekasten').new_note()<CR>", desc = "New note" },
      { "<leader>tN", ":lua require('telekasten').new_templated_note()<CR>", desc = "New templated note" },
      { "<leader>ty", ":lua require('telekasten').yank_notelink()<CR>", desc = "Yank notelink" },
      { "<leader>tc", ":lua require('telekasten').show_calendar()<CR>", desc = "Show calendar" },
      { "<leader>tC", ":CalendarT<CR>", desc = "Calendar" },
      { "<leader>ti", ":lua require('telekasten').paste_img_and_link()<CR>", desc = "Paste image and link" },
      { "<leader>tt", ":lua require('telekasten').toggle_todo()<CR>", desc = "Toggle todo" },
      { "<leader>tb", ":lua require('telekasten').show_backlinks()<CR>", desc = "Show backlinks" },
      { "<leader>tF", ":lua require('telekasten').find_friends()<CR>", desc = "Find friends" },
      { "<leader>tI", ":lua require('telekasten').insert_img_link({ i=true })<CR>", desc = "Insert image link" },
      { "<leader>tp", ":lua require('telekasten').preview_img()<CR>", desc = "Preview image" },
      { "<leader>tm", ":lua require('telekasten').browse_media()<CR>", desc = "Browse media" },
      { "<leader>ta", ":lua require('telekasten').show_tags()<CR>", desc = "Show tags" },
      { "<leader>#", ":lua require('telekasten').show_tags()<CR>", desc = "Show tags" },
      { "<leader>tr", ":lua require('telekasten').rename_note()<CR>", desc = "Rename note" },
    },
  },
}
