-- Leader key
vim.g.mapleader = " "

-- Set options
vim.opt.number = true              -- add line numbers
vim.opt.relativenumber = true      -- add relative line numbers
vim.opt.tabstop = 2                -- sets tabstop to 2 spaces
vim.opt.autoindent = true          -- sets the new line to the same autoindent
vim.opt.softtabstop = 2            -- sets soft tabstop to 2 spaces
vim.opt.shiftwidth = 2             -- sets shift width to 2 spaces
vim.opt.expandtab = true           -- convert tabs to spaces
vim.opt.clipboard = "unnamedplus"  -- use system clipboard
vim.opt.scrolloff = 10             -- enables autoscroll 

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Leader key mappings
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>V', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>jj', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>kk', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', { noremap = true, silent = true })

-- Non leader key mappings
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'æ', '<C-d>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ø', '<C-u>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'Æ', 'VdkP', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Ø', 'Vdp', {noremap = true, silent = true})

