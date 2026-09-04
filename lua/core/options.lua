vim.wo.number = true
vim.opt.tabstop = 4         -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.o.wrap = true
vim.o.linebreak = true         -- wrap at word boundaries
vim.o.showbreak = "↳ "         -- prefix for wrapped lines
vim.o.breakindent = true       -- keep indentation on wrapped lines
vim.o.mouse = 'a'
vim.o.autoindent = true
vim.o.ignorecase = true -- Ignore case for search
vim.o.smartcase = true
vim.o.cursorline = true

-- Sync clipboard with OS
if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'win32yank',
    copy = {
      ['+'] = 'win32yank.exe -i --lf',
      ['*'] = 'win32yank.exe -i --lf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = 0,
  }
end
vim.opt.clipboard = "unnamedplus"

-- Unmap F1
vim.keymap.set({"n","i","v","o","t"}, "<F1>", "<Nop>", {silent = true})
-- Enable true color support before plugins/colorschemes
vim.opt.termguicolors = true

