-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Git diff markers in the sign column
    use "airblade/vim-gitgutter"

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Prettier auto format
    use 'prettier/vim-prettier'

    -- Neovim plugin for GitHub Copilot
    use 'github/copilot.vim'

    -- Retro groove colorscheme for Vim
    use {
        'morhetz/gruvbox',
        as = 'gruvbox',
        config = function()
            -- set colorscheme on load
            vim.cmd('colorscheme gruvbox')
        end
    }

    -- A light and configurable statusline/tabline plugin for Vim
    use {
        'itchyny/lightline.vim',
        config = function()
            vim.g.lightline = {
                colorscheme = "wombat",
            }
        end
    }

    -- Collection of functions that will help you setup Neovim's LSP client,
    -- so you can get IDE-like features with minimum effort.
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Git wrapper
    use {
        'tpope/vim-fugitive',
        config = function ()
            vim.keymap.set("n", "<leader>g", ":Git <CR>", { noremap = true })
        end
    }
end)
