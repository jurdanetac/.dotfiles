let mapleader = "\<Space>"    " Remap <Leader> to space-bar

set clipboard+=unnamedplus    " Always use the clipboard for all operations
set colorcolumn=79            " Ruler
set expandtab                 " Use spaces to insert a <Tab>
set hidden                    " Buffer becomes hidden when it is abandoned
set ignorecase                " Ignore case in search patterns
set laststatus=0              " Always hide status line
set list                      " Useful to difference between tabs and spaces
set mouse=                    " Disable mouse
set noruler                   " Hide cursor position
set number                    " Show current line number
set shiftwidth=2              " Number of spaces for each step of indent
set shortmess+=I              " Don't give the intro message when starting Vim
set smartcase                 " Case-sensitive search if using capital letters
set splitbelow splitright     " Split a window below/right the current one
set softtabstop=2             " Number of spaces that a <Tab> counts for
set switchbuf=usetab          " Behavior when switching between buffers

" Strings to use in 'list'
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

" Omni completion provides smart autocompletion for programs
set omnifunc=syntaxcomplete#Complete

" Rulers color
highlight ColorColumn ctermbg = lightgrey

" Strip trailing whitepsace before save
autocmd BufWritePre * :%s/\s\+$//e

" Clear highlight on pressing Esc
nnoremap <silent> <Esc> :noh<CR>:echo<CR>

" Change two split windows from vertical to horizontal or vice versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>