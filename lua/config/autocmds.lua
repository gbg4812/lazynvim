-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Create symmetrical `$$` pair only in Tex files
local map_tex = function()
    local MiniPairs = require("mini.pairs")
    MiniPairs.map_buf(0, "i", "$", { action = "closeopen", pair = "$$" })
end
vim.api.nvim_create_autocmd("FileType", { pattern = "tex", callback = map_tex })
