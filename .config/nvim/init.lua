vim.opt.relativenumber = true   -- Show hybrid line numbers
vim.opt.showmatch = true        -- Highlight matching parenthesis
vim.opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
vim.opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
vim.opt.splitright = true       -- Vertical split to the right
vim.opt.splitbelow = true       -- Horizontal split to the bottom
vim.opt.ignorecase = true       -- Ignore case letters when search
vim.opt.smartcase = true        -- Ignore lowercase for the whole pattern
vim.opt.linebreak = true        -- Wrap on word boundary
vim.opt.termguicolors = true    -- Enable 24-bit RGB colors
vim.opt.laststatus=3            -- Set global statusline
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 2          -- Shift 2 spaces when tab
vim.opt.tabstop = 2             -- 1 tab == 2 spaces
vim.opt.smartindent = true      -- Autoindent new lines
vim.opt.hidden = true           -- Enable background buffers
vim.opt.history = 100           -- Remember N lines in history
vim.opt.lazyredraw = true       -- Faster scrolling
vim.opt.undofile = true         -- enable persistent undo
vim.opt.synmaxcol = 240         -- Max column for syntax highlight
vim.opt.updatetime = 700        -- ms to wait for trigger an event
vim.g.mapleader = ' '           -- setting the leader to space
