-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("plugins")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("v", "kj", "<Esc>")
vim.keymap.set("n", "s", "<Cmd>write<CR>", { desc = "Save file" })
vim.keymap.set("n", "gg", "gg0")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("v", "J", "j")
vim.keymap.set("v", "K", "k")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move down" })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move up" })
vim.keymap.set("n", "<C-a>", ":<C-u>normal! ggVG<CR>", { silent = true })
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')

-- Plugins Keymaps
vim.keymap.set("n", "<leader>ff", function() require("snacks").picker.files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function() require("snacks").picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>fb", function() require("snacks").picker.buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", function() require("snacks").picker.help() end, { desc = "Help Pages" })
vim.keymap.set("n", "<leader>fk", function() require("snacks").picker.keymaps() end, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>fr", function() require("snacks").picker.recent() end, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fs", function() require("snacks").picker.lsp_symbols() end, { desc = "LSP Symbols" })
vim.keymap.set("n", "<leader>fS", function() require("snacks").picker.lsp_workspace_symbols() end, { desc = "LSP Workspace Symbols" })
vim.keymap.set("n", "<leader>fw", function() require("snacks").picker.grep_word() end, { desc = "Grep Word" })

vim.keymap.set("n", "<leader>ha", function() require("harpoon"):list():add() end, { desc = "Harpoon: Add file" })
vim.keymap.set("n", "<leader>he", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, { desc = "Harpoon: Quick menu" })
vim.keymap.set("n", "<leader>h1", function() require("harpoon"):list():select(1) end, { desc = "Harpoon: File 1" })
vim.keymap.set("n", "<leader>h2", function() require("harpoon"):list():select(2) end, { desc = "Harpoon: File 2" })
vim.keymap.set("n", "<leader>h3", function() require("harpoon"):list():select(3) end, { desc = "Harpoon: File 3" })
vim.keymap.set("n", "<leader>h4", function() require("harpoon"):list():select(4) end, { desc = "Harpoon: File 4" })

vim.keymap.set("n", "<leader>bh", function() require("bufferline").cycle(-1) end, { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bl", function() require("bufferline").cycle(1) end, { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bj", function() require("bufferline").move(-1) end, { desc = "Move buffer tab left" })
vim.keymap.set("n", "<leader>bk", function() require("bufferline").move(1) end, { desc = "Move buffer tab right" })
vim.keymap.set("n", "<leader>bd", function() vim.api.nvim_buf_delete(0, {}) end, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>bo", function() require("bufferline").close_others() end, { desc = "Close other buffers" })

vim.keymap.set("n", "<leader>e", function() require("snacks").explorer() end, { desc = "Snacks: Toggle explorer" })
vim.keymap.set("n", "<leader>E", function() require("snacks").explorer({ layout = { position = "right", width = 40 } }) end, { desc = "Snacks: Explorer right panel" })
vim.keymap.set("n", "<leader>gg", function() require("snacks").terminal("lazygit", { cwd = vim.fn.getcwd() }) end, { desc = "Lazygit" })

vim.keymap.set({ "n", "x", "o" }, "<leader>j", function() require("flash").jump() end, { desc = "Flash: Jump" })
vim.keymap.set({ "n", "x", "o" }, "<leader>J", function() require("flash").treesitter() end, { desc = "Flash: Treesitter" })

vim.keymap.set({ "n", "v" }, "<leader>F", function() require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 }) end, { desc = "Format" })

vim.keymap.set("i", "<C-s>", function()
	vim.cmd("stopinsert")
	vim.cmd("silent write")
	require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
end, { desc = "Leave insert, save & format" })

vim.keymap.set("n", "<C-s>", function()
	vim.cmd("silent write")
	require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
end, { desc = "Save & format" })

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250

-- Autocmds
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged", "TextChangedI" }, {
	pattern = "*",
	callback = function()
		if vim.bo.modified and vim.bo.buftype == "" then
			vim.cmd.write()
		end
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("persistence_autoload", { clear = true }),
	nested = true,
	callback = function()
		if vim.fn.argc(-1) == 0 then
			require("persistence").load()
		end
	end,
})
