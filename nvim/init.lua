-- Prepend to runtimepath
vim.o.runtimepath = vim.fn.expand('~/.vim') .. ',' .. vim.o.runtimepath

-- Append to runtimepath
vim.o.runtimepath = vim.o.runtimepath .. ',' .. vim.fn.expand('~/.vim/after')

-- Set packpath to the same value as runtimepath
vim.o.packpath = vim.o.runtimepath

-- Source the .vimrc file
vim.cmd('source ~/.vimrc')

-- Add language server setup for pyright
-- require'lspconfig'.pyright.setup{}
-- require('lspconfig').pyright.setup {
--   settings = {
--     pyright = {
--       -- Using Ruff's import organizer
--       disableOrganizeImports = true,
--     },
--     python = {
--       analysis = {
--         -- Ignore all files for analysis to exclusively use Ruff for linting
--         ignore = { '*' },
--       },
--     },
--   },
-- }
