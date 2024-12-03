return {
    {
        "aserowy/tmux.nvim",
        config = function()
            return require("tmux").setup()
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        "phelipetls/vim-hugo",
    },
}
