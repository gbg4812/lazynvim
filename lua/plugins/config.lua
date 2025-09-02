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
}
return config
