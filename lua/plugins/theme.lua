return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.moonflyWinSeparator = 2
      vim.api.nvim_set_hl(0, "Type", { link = "MoonflyOrange" })
      vim.api.nvim_set_hl(0, "@type.builtin", { link = "MoonflyGreen" })
    end,
  },
}
