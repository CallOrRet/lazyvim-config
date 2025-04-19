return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        enabled = true,
      },
      picker = {
        icons = {
          git = {
            commit = "󰜘 ",
            staged = "",
            added = "",
            deleted = "",
            ignored = "◌",
            modified = "",
            renamed = "",
            unmerged = "",
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
        show_buffer_close_icons = false,
      },
    },
  },
}
