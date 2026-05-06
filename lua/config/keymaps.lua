-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local harpoon = require("harpoon")
harpoon:setup()

-- Basic keymaps
vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<leader>he", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>h1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>h2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>h3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>h4", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<F5>", ":w<CR>:!java %<CR>", { desc = "Run Python Script" })
