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
      styles = {
        float = {
          wo = { wrap = true },
        },
      },
    },
    config = function(_, opts)
      require("snacks").setup(opts)

      vim.api.nvim_set_hl(0, "NormalFloat", {
        bg = "#080808",
      })

      vim.api.nvim_set_hl(0, "FloatBorder", {
        bg = "#080808",
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        close_icon = "",
        show_buffer_close_icons = false,
      },
    },
  },
}
