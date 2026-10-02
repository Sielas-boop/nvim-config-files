-- require("snippets")
-- require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

vim.g.mapleader=" "

vim.opt.clipboard="unnamedplus"

vim.opt.number=true
vim.opt.relativenumber=true

vim.opt.undofile=true

vim.opt.splitbelow=true
vim.opt.splitright=true

vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.shiftwidth=0


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugin")


require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
