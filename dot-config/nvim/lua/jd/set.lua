-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.cache/nvim/backups"
vim.opt.directory = os.getenv("HOME") .. "/.cache/nvim/swapfiles"
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.ignorecase = true
vim.opt.mouse = ""
vim.opt.shortmess:append("I")


local generalSettingsGroup = vim.api.nvim_create_augroup('General settings', { clear = true })

-- trim whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*' },
    command = "%s/\\s\\+$//e",
    group = generalSettingsGroup,

})
