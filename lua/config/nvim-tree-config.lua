require("nvim-tree").setup(
  {
    sort = {
      sorter = "case_sensitive",
    },
    actions = {
      change_dir = { enable = false },
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
      git_clean = false,
      no_buffer = false,
    },
    update_focused_file = {
      enable = true,
      update_root = true
    },
  }
)

vim.cmd([[
    :hi      NvimTreeExecFile    guifg=#ffa0a0
    :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
    :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
    :hi link NvimTreeImageFile   Title
]])
