

return {
  -- Copilot
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;

      --vim.g.copilot_tab_fallback = "";
    end
  },

  'pocco81/auto-save.nvim',
  'windwp/nvim-autopairs',
  'machakann/vim-highlightedyank',
  'justinmk/vim-sneak',
  {
    'kylechui/nvim-surround',
    version = "*",
    event = "VeryLazy",
    opts = {
      surrounds = {
        ["("] = {
            add = { "(", ")" },
            find = function()
                return M.get_selection({ motion = "a(" })
            end,
            delete = "^(. ?)().-( ?.)()$",
        },
      };
    },
  },

  {
    'rust-lang/rust.vim',
    ft = "rust",
  },

  -- Vim tmux integration
  'christoomey/vim-tmux-navigator',

}

