local config = {
    {
        "catppuccin/nvim",
        opts = function(_, opts)
            local module = require("catppuccin.groups.integrations.bufferline")
            if module then
                module.get = module.get_theme
            end
            return opts
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
    {
        "neovim/nvim-lspconfig",

        opts = {
            inlay_hints = {
                enabled = false,
            },
        },
    },

    {
        "saghen/blink.cmp",
        opts = {
            completion = {
                documentation = {
                    window = {
                        max_width = 80,
                        max_height = 20,
                    },
                },
            },
        },
    },

    {
        "stevearc/conform.nvim",
        -- You can also define any custom formatters here.
        opts = {
            formatters = {
                prettier = {
                    prepend_args = { "--prose-wrap", "always" },
                },
            },
        },
    },
    { "mason-org/mason.nvim", version = "^1.0.0" },
    { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
return config
