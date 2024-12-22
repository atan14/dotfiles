-- Nvim-tree opens up a file explorer

return {
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTree',
  keys = {
    { '<leader>e', 'nvim-tree-api.tree.toggle()', desc = 'Toggle file explorer', silent = true },
  },
}
