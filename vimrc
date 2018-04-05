set nocompatible " SET FIRST
set re=1

" Requirements {{{
" vim with clipboard enabled
" }}}

" Leader {{{
let mapleader=","
" }}}

" Vim Plug and Plugins{{{
call plug#begin()

Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()
" }}}

" FZF as CtrlP {{{
nnoremap <c-p> :FZF<cr>
" }}}

" Colors {{{
set t_Co=256              " 256-color mode
syntax enable             " Syntax highlighting
set background=dark       " Background
colorscheme grb256        " Colorscheme
" }}}

" Misc {{{

" Filetype based indentation
filetype plugin indent on

set autoindent            " Auto indentation.
set autoread              " Detect outside changes in file.
set backspace=2           " Normal backspace behaviour.
set cul                   " Highlight current line.
set history=20            " Set history size.
set laststatus=2          " Always display the status line.
set mouse=a               " Enable mouse.
set nowrap                " Disable line breaking.
set formatoptions-=t
set number                " Show line numbers.
set ruler                 " Show the cursor position all the time.
set showcmd               " Display incomplete commands.
set showmatch             " Match braces.
set textwidth=80          " Set wrap width.
set clipboard^=unnamed,unnamedplus " Use system clipboard

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Ignored files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" No backup / swap files
set nobackup
set nowritebackup
set noswapfile

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Disable Ex mode
map Q <Nop>
" }}}

" Searching {{{
set nohlsearch
set incsearch
set ignorecase
" }}}

" Encoding {{{
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
" }}}

" Status line {{{
set statusline=\ %f\ %m\ %r\ %=%l/\%L\ :\ \%c\ -\ %Y\ 
" }}}

" Splits {{{
nnoremap <C-W>- :sp<cr>
nnoremap <C-W>\| :vsp<cr>

nnoremap <C-W><C-Down> <C-W><C-J>
nnoremap <C-W><C-Up> <C-W><C-K>
nnoremap <C-W><C-Right> <C-W><C-L>
nnoremap <C-W><C-Left> <C-W><C-H>

set splitbelow
set splitright
" }}}

" Tabs {{{
nnoremap <C-W>c :tabnew<cr>
nnoremap <C-W>n :tabn<cr>
nnoremap <C-W>p :tabp<cr>
" }}}

" File Explorer {{{
nnoremap <C-N> :Lexplore<cr>
" }}}

" Enables folding for this file
set modelines=1
" vim:foldmethod=marker:foldlevel=0
