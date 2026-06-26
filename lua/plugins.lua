return require("lazy").setup({
    "nvim-lua/plenary.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
                ensure_installed = { "lua", "vim", "vimdoc", "query", "go", "python", "rust", "javascript", "typescript" },
                auto_install = true,
            })
        end,
    },
    {
        "folke/snacks.nvim",
        config = function()
            require("snacks").setup({
                bigfile = { enabled = true },
                explorer = { enabled = true },
                indent = { enabled = true },
                input = { enabled = true },
                notifier = { enabled = true, style = "compact" },
                picker = { enabled = true },
                quickfile = { enabled = true },
                scroll = { enabled = true },
                statuscolumn = { enabled = true },
                words = { enabled = true },
            })
        end,
    },
    {
        "saghen/blink.cmp",
        version = "*",
        config = function()
            require("blink.cmp").setup({
                keymap = { preset = "default" },
                sources = { default = { "lsp", "path", "snippets", "buffer" } },
            })
        end,
    },
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({ flavour = "mocha" })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "folke/flash.nvim",
        config = function()
            require("flash").setup({
                modes = { search = { enabled = false }, char = { enabled = true }, treesitter = { enabled = true } },
            })
        end,
    },
    {
        "folke/persistence.nvim",
        config = function()
            require("persistence").setup({ options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals" } })
        end,
    },
    {
        "ThePrimeagen/harpoon",
        config = function()
            require("harpoon").setup({})
        end,
    },
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup({ options = { numbers = "none", tab_size = 18, separator_style = "slant" } })
        end,
    },
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    go = { "lsp" },
                    rust = { "lsp" },
                    nix = { "nixpkgs-fmt" },
                    lua = { "stylua" },
                    python = { "ruff" },
                    ["_"] = { "lsp" },
                },
                format_on_save = { lsp_fallback = true, timeout_ms = 1000 },
            })
        end,
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lua.lsp")
        end,
    },
})
