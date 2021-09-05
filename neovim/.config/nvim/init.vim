" This config is intended to be used on neovim 0.4.3 (Ubuntu's 20.04 version')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ↪ General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/pack/default/start/gruvbox/colors/gruvbox.vim"'))
	echo "Downloading gruvbox colorscheme... (First launch, this could take a few seconds)"
	silent !git clone "https://github.com/morhetz/gruvbox.git" ~/.config/nvim/pack/default/start/gruvbox
endif

colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ↪ General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"    " Remap <Leader> to space-bar

set clipboard+=unnamedplus    " Always use the clipboard for all operations
set colorcolumn=72,79         " Rulers. 72 for comments, 79 for code
set expandtab                 " Use spaces to insert a <Tab>
set foldmethod=manual         " Folds are created manually
set hidden                    " Buffer becomes hidden when it is abandoned
set ignorecase                " Ignore case in search patterns
set laststatus=0              " Always hide status line
set lazyredraw                " Buffer screen updates instead of redrawing
set list                      " Useful to difference between tabs and spaces
set mouse=nicr                " Mouse support
set noruler                   " Hide cursor position
set shiftwidth=4              " Number of spaces for each step of indent
set shortmess+=I              " Don't give the intro message when starting Vim
set smartcase                 " Case-sensitive search if using capital letters
set splitbelow splitright     " Split a window below/right the current one
set softtabstop=4             " Number of spaces that a <Tab> counts for
set switchbuf=usetab          " Behavior when switching between buffers
set termguicolors             " Enables 24-bit RGB color in the TUI
set title                     " Window title will be set to 'titlestring'

" Strings to use in 'list'
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

" Omni completion provides smart autocompletion for programs
set omnifunc=syntaxcomplete#Complete

" Rulers color
highlight ColorColumn ctermbg = lightgrey

" Highlight the screen line of the cursor in the current window
augroup CursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

" Save and reload folds
augroup AutoSaveGroup
  autocmd!
  autocmd BufWinLeave,BufLeave,BufHidden,QuitPre ?* silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup END

" Strip trailing whitepsace before save
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ↪ Key Remapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clear highlight on pressing Esc
nnoremap <silent> <Esc> :noh<CR>:echo<CR>

" Switch buffers
nnoremap <silent> <Leader>p :sbprevious<CR>
nnoremap <silent> <Leader>n :sbnext<CR>
nnoremap <silent> <Leader>ls :ls<CR>
nnoremap <silent> <Leader>h :hide<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l
tnoremap <c-h> <c-w>h

" Change two split windows from vertical to horizontal or vice versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
