require'nvim-tree'.setup(
{
    disable_netrw = true,
    hijack_netrw = true,
    -- ignore_ft_on_setup = {
    --   'startify',
    --   'dashboard',
    --   'alpha',
    -- },
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
  view = {
      width = 30,
      -- height = 30,
      -- hide_root_folder = false,
      side = 'left',
      adaptive_size = true,
      -- mappings = {
      --   custom_only = false,
      --   list = {
      --     { key = { 'l', '<CR>', 'o' }, action = 'edit' },
      --     { key = 'h', action = 'close_node' },
      --     { key = 'v', action = 'vsplit' },
      --   },
      -- },
      number = false,
      relativenumber = false,
    },
    actions = {
      open_file = {
        resize_window = true,
      },
    },
  renderer = {
    highlight_git = true,
    indent_markers = { enable = true,
    },
    icons = {
      webdev_colors = true,
      git_placement = 'before',
      padding = ' ',
      symlink_arrow = ' ➛ ',
      show = {
        file = true,
        folder = true,
        git = true,
        folder_arrow = false,
      },
      glyphs = {
        default = '',
        symlink = '',
        git = {
          unstaged = '',
          staged = '✓',
          unmerged = '',
          renamed = '➜',
          deleted = '',
          untracked = '.',
          ignored = '◌',
        },
        folder = {
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
      },
    },
    },
  }
)
vim.g.nvim_tree_auto_open = 1
