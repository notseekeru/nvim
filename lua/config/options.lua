vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "#1a1b26", nocombine = true })
        vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#7aa2f7", bg = "none", nocombine = true })
    end,
})
