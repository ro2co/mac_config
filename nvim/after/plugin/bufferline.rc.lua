-- vim.opt.termguicolors = true
require("bufferline").setup({
  options = {
      -- offsets = { { filetype = 'NvimTree', text = '', padding = 1 } },
      close_icon = '',
      buffer_close_icon = '',
      modified_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      offsets = {{
           filetype = "NvimTree",
           text = "File explorer",
           text_align = "left",
           separator = true
         }
      },
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true,
      separator_style = "thin",
      enforce_regular_tabs = true,
      always_show_bufferline = true,
  }
})
