-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.mouse = ""
opt.shell = "fish"
opt.swapfile = false

local env = vim.fn.environ()
vim.env.PATH = "/root/lang/go/bin:/root/lang/node/bin:/root/lang/rust/bin:" .. env.PATH

vim.g.snacks_animate = false
