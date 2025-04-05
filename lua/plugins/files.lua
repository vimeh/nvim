return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      use_default_mappings = false,
      columns = { "icon" },
      view_options = { show_hidden = true },
    },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      image = {},
      picker = {
        win = {
          input = {
            keys = {
              ["<a-c>"] = {
                "toggle_cwd",
                mode = { "n", "i" },
              },
            },
          },
        },
        actions = {
          ---@param p snacks.Picker
          toggle_cwd = function(p)
            local root = LazyVim.root({ buf = p.input.filter.current_buf, normalize = true })
            local cwd = vim.fs.normalize((vim.uv or vim.loop).cwd() or ".")
            local current = p:cwd()
            p:set_cwd(current == root and cwd or root)
            p:find()
          end,

          -- NEW Combined Action: Add selected items OR current item to Avante
          ---@param picker snacks.Picker
          avante_add_explorer_smart = function(picker)
            -- Get selected items FIRST
            local selected_items = picker:selected()

            -- Common setup: Ensure Avante is ready
            local sidebar = require("avante").get()
            local open = sidebar:is_open()
            if not open then
              require("avante.api").ask()
              sidebar = require("avante").get() -- Re-get after potentially opening
            end

            -- Check if sidebar is actually available
            if not sidebar or not sidebar.file_selector then
              vim.notify("Avante sidebar or file selector not available.", vim.log.levels.ERROR)
              return
            end

            -- Decide which logic path to take
            if #selected_items > 0 then
              -- Path 1: Add selected items
              local count = 0
              for _, item in ipairs(selected_items) do
                if item and item.file then
                  local filepath = item.file
                  local relative_path = require("avante.utils").relative_path(filepath)
                  sidebar.file_selector:add_selected_file(relative_path)
                  count = count + 1
                else
                  vim.notify("Skipping an invalid selected item.", vim.log.levels.WARN)
                end
              end
              if count > 0 then
                vim.notify("Added " .. count .. " selected item(s) to Avante", vim.log.levels.INFO)
              else
                vim.notify("No valid files found in selection.", vim.log.levels.WARN)
              end
            else
              -- Path 2: Add current item (since nothing is selected)
              local item = picker:current()
              if not item or not item.file then
                vim.notify("No file selected or highlighted.", vim.log.levels.WARN)
                return -- Exit if no current item either
              end

              local filepath = item.file
              local relative_path = require("avante.utils").relative_path(filepath)
              sidebar.file_selector:add_selected_file(relative_path)
              vim.notify("Added '" .. vim.fn.fnamemodify(relative_path, ":t") .. "' to Avante", vim.log.levels.INFO)
            end
          end,
        },
        -- Configure the explorer source specifically
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["oa"] = "avante_add_explorer_smart",
                },
              },
            },
          },
        },
      },
    },
  },
}
