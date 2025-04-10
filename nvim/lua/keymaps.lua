-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- My keymaps
-- Indent with Tab
vim.keymap.set("v", "<Tab>", "2>gv", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", "2>>", { noremap = true, silent = true })

-- Unindent with Shift-Tab
vim.keymap.set("v", "<S-Tab>", "2<gv", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", "2<<", { noremap = true, silent = true })

-- Tab navigation
vim.keymap.set("n", "tn", ":tabn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tp", ":tabp<CR>", { noremap = true, silent = true })

-- Break line
vim.keymap.set("", "<C-n>", "i<CR><Esc>", { noremap = true, silent = true })

-- Show and unshow line numbers
vim.keymap.set("n", "nonum", ":set nonumber", { noremap = true, silent = true })
vim.keymap.set("n", "num", ":set number", { noremap = true, silent = true })

-- Copy and paste to clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
-- vim.keymap.set("", "<C-v>", '"+P', { noremap = true, silent = true })

-- Sending deletes to d register
vim.keymap.set("n", "d", '"dd', { noremap = true })
vim.keymap.set("n", "D", '"dD', { noremap = true })
vim.keymap.set("n", "dd", '"ddd', { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true }) -- send char deletes to black hole
vim.keymap.set("n", "dp", '"dp', { noremap = true }) -- paste what was deleted after cursor
vim.keymap.set("n", "dP", '"dP', { noremap = true }) -- paste what was deleted before cursor

vim.keymap.set("v", "d", '"dd', { noremap = true }) -- when visually selecting text and deleting
vim.keymap.set("v", "D", '"dD', { noremap = true })

-- vim: ts=2 sts=2 sw=2 et
