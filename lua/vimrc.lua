function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set number")

vim.keymap.set({ "n", "i" }, "<C-k>", ":m-2<CR>")
vim.keymap.set({ "n", "i" }, "<C-j>", ":m+<CR>")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-f>", ":open split<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>");

vim.cmd("set shiftwidth=2")

map("i", "jj", "<Esc>")

