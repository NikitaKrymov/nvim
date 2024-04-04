return {
  'MunifTanjim/nui.nvim',
  dependencies = {
    'VonHeikemen/fine-cmdline.nvim'
  },
  config = function ()
    vim.keymap.set('n', ":", '<cmd>FineCmdline<CR>', { noremap = true })
  end
}
