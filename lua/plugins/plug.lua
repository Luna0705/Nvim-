local M={
	 {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
},
{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
},
    {
    "mbbill/undotree"
    },
{"meatballs/notebook.nvim"},
    {
    "catppuccin/nvim"
    },
    {
        "erikbackman/brightburn.vim",
    },

    {
        "folke/tokyonight.nvim",
    },
    {
        "ellisonleao/gruvbox.nvim",
    },

    {
        "rose-pine/neovim",
    },
    {
        "mfussenegger/nvim-dap-python"
    }
}







return M
