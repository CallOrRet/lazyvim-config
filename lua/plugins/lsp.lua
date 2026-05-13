return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  "mrcjkb/rustaceanvim",
  -- opts = {
  --   server = {
  --     default_settings = {
  --       ["rust-analyzer"] = {
  --         diagnostics = {
  --           disabled = { "unresolved-proc-macro", "proc-macro-disabled" },
  --         },
  --       },
  --     },
  --   },
  -- },
}
