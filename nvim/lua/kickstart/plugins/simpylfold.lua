return {
  'tmhedberg/SimpylFold',
  opts = {},
  config = function()
      vim.g.SimpylFold_fold_import = 0
      vim.api.nvim_set_keymap('n', '<space>', 'za', { noremap = true, silent = true })
  end
}
