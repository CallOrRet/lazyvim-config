return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            added = "",
            staged = "",
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
    "OXY2DEV/markview.nvim",
    ft = "markdown",
  },
}
