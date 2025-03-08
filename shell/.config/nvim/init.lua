local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('github/copilot.vim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('kylechui/nvim-surround', { ['version'] = '*'})
vim.call('plug#end')

vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.backup = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.autoindent = true

vim.g['airline#extensions#tabline#enabled'] = 1

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
