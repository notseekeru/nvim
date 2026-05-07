-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.api.nvim_set_hl(0, "MyCursor", { fg = "none", bg = "#FF0000" })
vim.opt.guicursor = "n-v-c:block-MyCursor,i-ci-ve:ver25-MyCursor,r-cr:hor20,o:hor50"
