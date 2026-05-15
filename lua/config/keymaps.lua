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

vim.keymap.set("n", "gg", "gg0", { desc = "Go to top of file and first column" })

-- Remap original 'i' to 'h' so you don't lose the insert command
vim.keymap.set({ "n", "v" }, "h", "i", { noremap = true })
vim.keymap.set({ "n", "v" }, "H", "J", { noremap = false })
vim.keymap.set({ "n", "v" }, "H", "I", { noremap = false })
vim.keymap.set("n", "J", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "L", ":bnext<CR>", { silent = true })

-- Map IJKL to Arrow keys in Normal, Visual, and Operator-pending modes
vim.keymap.set({ "n", "v", "o" }, "j", "h", { noremap = true }) -- Left
vim.keymap.set({ "n", "v", "o" }, "k", "j", { noremap = true }) -- Down
vim.keymap.set({ "n", "v", "o" }, "i", "k", { noremap = true }) -- Up
vim.keymap.set({ "n", "v", "o" }, "l", "l", { noremap = true }) -- Right

-- Ctrl + IJKL to move between open split windows
vim.keymap.set("n", "<C-j>", "<C-w>h", { silent = true }) -- Ctrl+J moves Left
vim.keymap.set("n", "<C-k>", "<C-w>j", { silent = true }) -- Ctrl+K moves Down
vim.keymap.set("n", "<C-i>", "<C-w>k", { silent = true }) -- Ctrl+I moves Up
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true }) -- Ctrl+L moves Right

-- Escape Remap (All mode)
vim.keymap.set("n", "<leader>k", "<Esc>")
vim.keymap.set("i", "<leader>k", "<Esc>")
vim.keymap.set("v", "<leader>k", "<Esc>")
vim.keymap.set("c", "<leader>k", "<Esc>")

-- Disable Esc Key (All mode)
vim.keymap.set("n", "<Esc>", "<Nop>")
vim.keymap.set("i", "<Esc>", "<Nop>")
vim.keymap.set("v", "<Esc>", "<Nop>")
vim.keymap.set("c", "<Esc>", "<Nop>")

-- Upward Select
vim.keymap.set("v", "J", "j")

-- Downward Select
vim.keymap.set("v", "K", "k")

-- Remap of ;
vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", ":", ";", { noremap = true })
vim.opt.timeoutlen = 200

-- Ctrl D and E for upward and downward long navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", "<C-u>zz", { noremap = true, silent = true })

-- Move line up and down (Normal Mode)
vim.keymap.set("n", "<A-i>", ":m .-2<CR>==", { desc = "Move up" })
vim.keymap.set("n", "<A-k>", ":m .+1<CR>==", { desc = "Move down" })

-- Move line up and down (Insert Mode)
vim.keymap.set("i", "<A-k>", "<Esc>:m .+1<CR>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-i>", "<Esc>:m .-2<CR>==gi", { desc = "Move up" })

-- Select all (Normal Mode)
vim.keymap.set("n", "<C-a>", "bbbggVGeee")

-- Yanking Remap (No Previous Delete Last Copy)
vim.keymap.set("x", "<leader>p", '"_dP')

-- Clipboard Remap (Copy)
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
