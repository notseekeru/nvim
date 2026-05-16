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
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move down" })

-- Move line up and down (Insert Mode)
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move up" })

-- Select all (Normal Mode)
vim.keymap.set("n", "<C-a>", "bbbggVGeee")

-- Yanking Remap (No Previous Delete Last Copy)
vim.keymap.set("x", "<leader>p", '"_dP')

-- Clipboard Remap (Copy)
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
