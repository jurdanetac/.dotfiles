-- vim.opt.guicursor = ""

-- set line numbers
vim.opt.nu = true
-- set relative line numbers
vim.opt.relativenumber = true
-- do not wrap lines when they don't fit in screen width
vim.opt.wrap = false

-- set tab width to 4 spaces
vim.opt.tabstop = 4
-- set indentation to 4 spaces
vim.opt.softtabstop = 4
-- set how much a tab accounts in spaces
vim.opt.shiftwidth = 4
-- use spaces instead of tabs
vim.opt.expandtab = true
-- set smart indentation (autoindent on new line)
vim.opt.smartindent = true

-- enable swap files
vim.opt.swapfile = true
-- enable backup files
vim.opt.backup = true
-- ms to wait before writing swap file to disk
vim.opt.updatetime = 50
-- keep backup files in cache directory
vim.opt.backupdir = os.getenv("HOME") .. "/.cache/nvim/backups//,."
vim.opt.directory = os.getenv("HOME") .. "/.cache/nvim/swapfiles//,."
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir//,."

-- do not highlight all search matches
vim.opt.hlsearch = false
-- enable incremental search
vim.opt.incsearch = true
-- case sensitive search if contains uppercase letters
vim.opt.smartcase = true

-- count of lines to keep above and below cursor
vim.opt.scrolloff = 8
-- ruler
vim.opt.colorcolumn = "80"
-- enable 24-bit RGB colors
vim.opt.termguicolors = true

-- disable mouse in all modes
vim.opt.mouse = ""
-- disable intro message
vim.opt.shortmess:append("I")

-- where to open windows
vim.opt.splitbelow = true
vim.opt.splitright = true

local generalSettingsGroup = vim.api.nvim_create_augroup('General settings', { clear = true })

-- trim whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*' },
    command = "%s/\\s\\+$//e",
    group = generalSettingsGroup,

})
