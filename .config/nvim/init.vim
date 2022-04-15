set clipboard+=unnamedplus    " Always use the clipboard for all operations
set expandtab                 " Use spaces to insert a <Tab>
set ignorecase                " Ignore case in search patterns
set laststatus=0              " Always hide status line
set list                      " Useful to difference between tabs and spaces
set mouse=                    " Disable mouse
set nohidden                  " Buffer is unloaded when abandoned
set shiftwidth=4              " Number of spaces for each step of indent
set shortmess+=I              " Don't give the intro message when starting Vim
set smartcase                 " Case-sensitive search if using capital letters
set splitbelow splitright     " Split a window below/right the current one
set softtabstop=4             " Number of spaces that a <Tab> counts for

" Strings to use in 'list'
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

" Strip trailing whitepsace before save
autocmd BufWritePre * :%s/\s\+$//e

" Clear highlight on pressing Esc
nnoremap <silent> <Esc> :noh<CR>:echo<CR>

" Disable language providers
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_node_provider = 0
let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0
