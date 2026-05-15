return {
    -- 1. Install the core legacy engine safely managed by Grafana
    {
        "grafana/vim-alloy",
        ft = "alloy", -- Triggers lazy loading exclusively inside .alloy targets
        init = function()
            -- Map the file headers before the buffer loads to bypass TS parsing hooks
            vim.filetype.add({
                extension = {
                    alloy = "alloy",
                },
                filename = {
                    ["config.alloy"] = "alloy",
                },
            })
        end,
    },

    -- 2. Cleanly extend treesitter without calling internal registry fields
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                -- Ensure base microservices configuration highlights remain stable
                vim.list_extend(opts.ensure_installed, { "go", "json", "yaml", "make" })
            end
        end,
    },
}
