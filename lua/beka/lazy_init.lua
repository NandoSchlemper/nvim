local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Setup lazy.nvim
require("lazy").setup({
  spec = "beka.lazy",
  change_detection = {notify = false}
})

local err, tterm = pcall(require, "toggleterm")
if not err then
    return
end
vim.cmd [[let &shell = '"C:\Program Files\Git\bin\bash.exe"']]
vim.cmd [[let &shellcmdflag = '-s']]
tterm.setup({
    open_mapping = '<C-\\>',
    start_in_insert = true,
    direction = 'float',
    size = 10
})

