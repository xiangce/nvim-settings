return {
  { 'tpope/vim-endwise' },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  { 'neoclide/coc.nvim' },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      sort = { sorter = "case_sensitive" },
      actions = { change_dir = { enable = false } },
      view = { width = 30 },
      renderer = { group_empty = true },
      filters = {
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
      },
      update_focused_file = {
        enable = true,
        update_root = true
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  }
}
