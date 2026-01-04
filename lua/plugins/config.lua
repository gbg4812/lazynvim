return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },

    { "nvim-treesitter/nvim-treesitter", branch = "main" },

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
            -- routes = {
            --     {
            --         filter = {
            --             event = "lsp",
            --             kind = "progress",
            --             cond = function(message)
            --                 local client = vim.tbl_get(message.opts, "progress", "client")
            --                 return client == "ltex_plus"
            --             end,
            --         },
            --         opts = { skip = true },
            --     },
            -- },
        },
    },

    {
        "neovim/nvim-lspconfig",
        optional = true,
        opts = {
            servers = {
                texlab = {
                    settings = {
                        texlab = {
                            latexindent = {
                                modifyLineBreaks = true,
                            },
                        },
                    },
                },
                ltex_plus = {
                    settings = {
                        ltex = {
                            language = "ca-ES",
                            hiddenFalsePositives = {
                                ["ca-ES"] = {
                                    {
                                        rule = "MORFOLOGIK_RULE_CA_ES",
                                        sentence = "Dummy\\d+",
                                    },
                                    {
                                        rule = "MORFOLOGIK_RULE_CA_ES",
                                        sentence = "Ina\\d+",
                                    },
                                },
                            },
                            checkFrequency = "save",
                        },
                    },
                },
            },
        },
    },
}
