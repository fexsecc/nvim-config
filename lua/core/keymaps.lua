local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Change leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo"
vim.opt.undolevels = 1000        -- Maximum number of undo levels
vim.opt.undoreload = 10000       -- Maximum number of lines to save for undo

-- unhighlight search
map('n', '<Esc>', ':nohlsearch<CR>', opts)

-- move left and right in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Delete single char without copying into register
map('n', 'x', '"_x', opts)

-- Change text without copying into register
map('n', 'c', '"_c', opts)

-- Keep last yanked when pasting
map('v', 'p', '"_dP', opts)

-- Center big page scrolls
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', '<C-f>', '<C-f>zz', opts)
map('n', '<C-b>', '<C-b>zz', opts)
map('n', '<C-o>', '<C-o>zz', opts)

-- Vertical scroll and center
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Navigate between splits
map('n', '<C-k>', ':wincmd k<CR>', opts)
map('n', '<C-j>', ':wincmd j<CR>', opts)
map('n', '<C-h>', ':wincmd h<CR>', opts)
map('n', '<C-l>', ':wincmd l<CR>', opts)

-- Neotree
map('n', '<C-n>', ':Neotree toggle<CR>', opts)

-- Kill pane
map('n', '<Space>x', ':Bdelete<CR>', opts)

-- Switch between tabs
map('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
