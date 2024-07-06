-- set leader key
vim.g.mapleader = " "

-- open directory tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- save current file (:w)
vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- source file current (useful when tweaking config)
vim.keymap.set("n", "<leader>so", vim.cmd.source)

-- close window
vim.keymap.set("n", "<leader>q", "<C-w>c", { noremap = true })

-- resize windows
vim.keymap.set("n", "<C-h>", "<C-w><", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>-", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>+", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>>", { noremap = true })

-- vertical split
vim.keymap.set("n", "<leader>v", "<C-w>v", { noremap = true })
-- horizontal split
vim.keymap.set("n", "<leader>h", "<C-w>s", { noremap = true })

vim.keymap.set("n", "<leader>j", ":tabprevious<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":tabnext<CR>", { noremap = true })
vim.keymap.set("n", "<leader>n", ":tabnew<CR>:e ", { noremap = true })

--
vim.keymap.set("n", "<Esc>", ":noh<CR>:echo<CR>", { noremap = true })

vim.keymap.set("n", "<leader>b", "<C-^>", { noremap = true })

-- auto close brackets
-- vim.keymap.set("i", "(", "()<Left>")
-- vim.keymap.set("i", "[", "[]<Left>")
-- vim.keymap.set("i", "{", "{}<Left>")

-- https://stackoverflow.com/a/360634
-- folding for python
vim.keymap.set("n", "<tab>", "za", { noremap = true })
-- vim.keymap.set("v", "<tab>", "zf", { noremap = true })
