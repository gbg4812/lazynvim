return {
    {
        "L3MON4D3/LuaSnip",
        keys = {
            {
                "<c-k>",
                function()
                    return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
                end,
                expr = true,
                silent = true,
                mode = "i",
            },
            {
                "<c-k>",
                function()
                    require("luasnip").jump(1)
                end,
                mode = "s",
            },
            {
                "<c-j>",
                function()
                    require("luasnip").jump(-1)
                end,
                mode = { "i", "s" },
            },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
