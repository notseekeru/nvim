-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard = "unnamedplus"
vim.opt.conceallevel = 0

vim.opt.termguicolors = true

vim.cmd("highlight RedCursor guibg=#FF0000 guifg=#FFFFFF")

vim.opt.guicursor = "n-v-c-i-ci-ve-t-r-cr-o:block-RedCursor"
