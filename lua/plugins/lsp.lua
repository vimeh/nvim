return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          -- TODO: turn off MD013/line-length check
          -- unclear rn which lsp is throwing this
          -- markdownlint; might be marksman?
        },
        -- TODO: figure out this later
        -- ["rust-analyzer"] = {
        --   -- Other Settings ...
        --   procMacro = {
        --     ignored = {
        --       leptos_macro = {
        --         -- optional: --
        --         -- "component",
        --         "server",
        --       },
        --     },
        --   },
        -- },
      },
    },
    capabilities = {
      textDocument = {
        foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true,
        },
      },
    },
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>cs", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    config = function()
      require("outline").setup({})
    end,
  },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "templ",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  -- enable supertab: https://www.lazyvim.org/configuration/recipes#supertab
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
}
