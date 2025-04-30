return {
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
