return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    config = function()
      vim.schedule(function()
        vim.api.nvim_set_hl(0, "Type", { link = "MoonflyOrange" })
        vim.api.nvim_set_hl(0, "@type.builtin", { link = "Type" })
      end)
    end,
  },
}
