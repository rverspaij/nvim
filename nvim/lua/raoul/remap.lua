vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Search for word under curser in all files
vim.keymap.set('n', '<leader>f', ':lua vim.cmd("execute \'vimgrep /" .. vim.fn.expand("<cword>") .. "/ **/*\'")<CR>:copen<CR>', { noremap = true, silent = true })

-- Switch between terminals
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

-- Open cheatsheet file for neovim
vim.keymap.set('n', '<leader>ch', ':e ~/Documents/nvim_cheatsheet.txt<CR>')

-- Opslaan en exiten van bestanden
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-x>', ':q<CR>', { noremap = true, silent = true })

-- DBEE shortcut
vim.keymap.set('n', '<leader>db', ':DBUI<CR>', { noremap = true, silent = true })

-- Run go code
vim.keymap.set('n', '<F5>', ':w<CR>:!go run %<CR>', { noremap = true, silent = true })
