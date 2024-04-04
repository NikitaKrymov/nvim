return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    config = function ()
      vim.keymap.set({ 'n', 'i' }, '<C-t>p', '<cmd>BufferPrevious<CR>', {})
      vim.keymap.set({ 'n', 'i' }, '<C-t>n', '<cmd>BufferNext<CR>', {})
      vim.keymap.set({ 'n', 'i' }, '<C-t>x', '<cmd>BufferClose<CR>', {})
    end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
