return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
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
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                texlab = {
                    settings = {
                        texlab = {
                            build = {
                                executable = "latexmk",
                                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                            },
                            forwardSearch = {
                                executable = "zathura",
                                args = { "--synctex-forward", "%l:1:%f", "%p" },
                            },
                            formatterLineLength = 80, -- 👈 wrap lines at 80 columns
                            latexindent = {
                                modifyLineBreaks = true, -- 👈 actually allows reflowing text
                            },
                        },
                    },
                },
            },
        },
    },

    {
        "lervag/vimtex",
        lazy = false, -- lazy-loading will disable inverse search
        config = function()
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_quickfix_mode = 0
        end,
        keys = {
            { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
        },
    },

    {
        "folke/noice.nvim",
        opts = {
            lsp = {
                enable = false,
                message = {
                    enable = false,
                },
            },
        },
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        keys = {
            {
                "<leader>fe",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root(), position = "float" })
                end,
                desc = "Explorer NeoTree (Root Dir)",
            },
            {
                "<leader>fE",
                function()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd(), position = "float" })
                end,
                desc = "Explorer NeoTree (cwd)",
            },
        },
    },
}
