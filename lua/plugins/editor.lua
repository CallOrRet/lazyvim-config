return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.cmd([[
              setlocal relativenumber
            ]])
          end,
        },
      },
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
