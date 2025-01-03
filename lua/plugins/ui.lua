return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = { char = "┊" },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            added = "",
            staged = "󰱒",
            ignored = "◌",
            deleted = "",
            renamed = "",
            unstaged = "",
            untracked = "",
          },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = {},
        indicator = {
          style = "underline",
        },
        show_buffer_icons = false,
        show_buffer_close_icons = false,
      },
    },
  },
}
