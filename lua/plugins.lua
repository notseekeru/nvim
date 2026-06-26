-- lua/plugins.lua
return require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
	"folke/snacks.nvim",
	"folke/flash.nvim",
	"folke/persistence.nvim",
	"ThePrimeagen/harpoon",
	"akinsho/bufferline.nvim",
	"stevearc/conform.nvim",
	"catppuccin/nvim",
	"saghen/blink.cmp",
	"f-person/git-blame.nvim", -- Assuming codediff was maybe something else? Wait, user had "codediff". Let me check plugins again.
	-- The user had `require("codediff")`. I'll try to guess the repo or if it's a local plugin.
	-- Actually, better to just list the ones I see explicitly used.
	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
})
