return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            disabled = { "unresolved-proc-macro", "proc-macro-disabled" },
          },
        },
      },
    },
  },
}
