local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then

  vim.fn.system({
    "clone",
    "--filter=blob:none",
    "git",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd('nnoremap <Space> <Nop>')
vim.cmd('map <Space> <Leader>')

require("lazy").setup("plugins")
require("vimrc")
