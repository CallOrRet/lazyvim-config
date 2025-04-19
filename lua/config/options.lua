-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.mouse = ""
opt.shell = "fish"
opt.swapfile = false

vim.g.snacks_animate = false

local lang_dir = "/root/lang"
local lang_dirs = vim.split(vim.fn.glob(lang_dir .. "/*"), "\n", { trimempty = true })
for _, dir in pairs(lang_dirs) do
  local bin_path = dir .. "/bin"
  local stat = vim.uv.fs_stat(bin_path)
  if stat and stat.type == "directory" then
    vim.env.PATH = bin_path .. ":" .. vim.env.PATH
  end
end
