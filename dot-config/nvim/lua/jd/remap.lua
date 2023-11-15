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
vim.keymap.set("n", "<C-k>", "<C-w>+", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>-", { noremap = true })

-- vertical split
vim.keymap.set("n", "<leader>v", "<C-w>v", { noremap = true })
-- horizontal split
vim.keymap.set("n", "<leader>h", "<C-w>s", { noremap = true })

--
vim.keymap.set("n", "<Esc>", ":noh<CR>:echo<CR>", { noremap = true })

-- auto close brackets
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "{", "{}<Left>")
