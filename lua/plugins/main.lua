return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        zls = {
          mason = false,
        },
      },
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    opts = {
      setup = {
        transparent = false,
        terminal_colors = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
  },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "garymjr/nvim-snippets",
    opts = {
      friendly_snippets = false,
    },
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup({
        bind = true,
        hint_enable = true,
        hint_prefix = "!>",
        toggle_key = "<C-x>",
        transparency = 10,
        handler_opts = {
          border = "none",
        },
        hi_parameter = "LspSignatureActiveParameter",

        doc_lines = 10,
      })
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        documentation = {
          view = "hover",
          ---@type NoiceViewOptions
          opts = {
            replace = true,
            render = "plain",
            format = { "{message}" },
            win_options = { concealcursor = "n", conceallevel = 3 },
          },
        },
        signature = {
          enabled = false,
          auto_open = {
            enabled = true,
            trigger = true,
            luasnip = true,
            throttle = 1,
          },
          ---@type NoiceViewOptions
          opts = {
            popupmenu = {
              size = {
                max_height = vim.api.nvim_win_get_height(0) / 2,
                max_width = vim.api.nvim_win_get_width(0) / 2,
              },
              win_options = {
                winbar = "",
                foldenable = false,
                cursorline = true,
                cursorlineopt = "line",
                winhighlight = {
                  Normal = "NormalFloat", -- change to NormalFloat to make it look like other floats
                  FloatBorder = "NoicePopupmenuBorder", -- border highlight
                  CursorLine = "NoicePopupmenuSelected", -- used for highlighting the selected item
                  PmenuMatch = "NoicePopupmenuMatch", -- used to highlight the part of the item that matches the input
                },
              },
            },
          },
        },
      },
    },
  },
}
