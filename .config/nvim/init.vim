set colorcolumn=80            " Ruler
"set expandtab                 " Use spaces to insert a <Tab>
set ignorecase                " Ignore case in search patterns
set laststatus=0              " Always hide status line
"set list                      " Useful to difference between tabs and spaces
set mouse=                    " Disable mouse
set nohidden                  " Buffer is unloaded when abandoned
set nowrap                    " Prevent line overflow when char bound exceeded
"set number                    " Show line numbers on left
set shiftwidth=8              " Number of spaces for each step of indent
set shortmess+=I              " Don't give the intro message when starting Vim
set smartcase                 " Case-sensitive search if using capital letters
set splitbelow splitright     " Split a window below/right the current one
set softtabstop=8             " Number of spaces that a <Tab> counts for

" Ruler color
highlight ColorColumn ctermbg=darkgrey ctermfg=red
" Highlight characters past 80
match Error /\%80v.\+/

" Strings to use in 'list'
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

" Strip trailing whitepsace before save
autocmd BufWritePre * :%s/\s\+$//e

" augroup c_save | autocmd!
"     autocmd BufWritePost *.c
" augroup end

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| execute "normal! g`\"" | execute "normal! zz" | endif
endif

" Clear highlight on pressing Esc
nnoremap <silent> <Esc> :noh<CR>:echo<CR>

" Make :W save the file too
command! W write
" Make :Q quit the file too
command! Q quit

" Disable language providers
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_node_provider = 0
let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0
