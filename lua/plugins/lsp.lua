return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {},
        pyright = {},
        tsserver = {},
        html = {},
        tailwindcss = {},
        htmx = {},
        templ = {},
        marksman = {
          -- TODO: turn off MD013/line-length check
          -- unclear rn which lsp is throwing this
          -- markdownlint; might be marksman?
        },
        postgres_lsp = {},
        denols = {},
      },
      setup = {
        rust_analyzer = function()
          return true
        end,
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
