-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.list = false
opt.shiftwidth = 4
opt.tabstop = 4

-- set to `true` to follow the main branch
-- you need to have a working rust toolchain to build the plugin
-- in this case.
vim.g.lazyvim_blink_main = true
vim.g.snacks_animate = false

vim.filetype.add({
    extension = {
        vert = "glsl",
        frag = "glsl",
    },
})
