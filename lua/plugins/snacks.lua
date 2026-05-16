return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            sources = {
                files = {
                    layout = { preset = "ivy", preview = false },
                },
                explorer = {
                    hidden = true,
                    ignored = true,
                    exclude = { ".git" },
                },
            },
        },
        explorer = {
            enabled = true,
            auto_close = false,
            jump = { close = false },
        },
    },
}
