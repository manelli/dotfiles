set nocompatible " SET FIRST
set re=1 " Use the old vim regex engine

" Requirements {{{
" Vim >= 8.1 (+clipboard +terminal)
" }}}

" Leader {{{
let mapleader=","
" }}}

" Vim Plug and Plugins{{{
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-test/vim-test'
Plug 'lervag/file-line'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }

call plug#end()
" }}}

" Plugins configuration {{{
" FZF default command
let $FZF_DEFAULT_COMMAND = 'rg --files --vimgrep'

" FZF as CtrlP
nnoremap <c-p> :FZF<cr>

" Comment/uncomment
map <leader>c :Commentary<cr>

" Vim-test strategy
let test#strategy = "vimterminal"
" }}}

" Colors {{{
set t_Co=256              " 256-color mode
syntax enable             " Syntax highlighting
set background=dark       " Background
colorscheme grb256        " Colorscheme

" Override SignColumn highlight (must come AFTER colorscheme)
highlight SignColumn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
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

set updatetime=100

" Better mouse support
if has('mouse_sgr')
  set ttymouse=sgr
end

" Display extra whitespace
set list listchars=tab:»\ ,trail:·,nbsp:␣

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
nnoremap <C-W>- :new<cr>
nnoremap <C-W>\| :vnew<cr>

nnoremap <C-W><C-Down> <C-W><C-J>
nnoremap <C-W><C-Up> <C-W><C-K>
nnoremap <C-W><C-Right> <C-W><C-L>
nnoremap <C-W><C-Left> <C-W><C-H>

set splitbelow
set splitright

function! ToggleSplits()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical'
    windo ball
    let t:splitType = 'horizontal'
  else
    windo vertical ball
    let t:splitType = 'vertical'
  endif
endfunction

nnoremap <silent> <C-W><space> :call ToggleSplits()<cr>
" }}}

" Tabs {{{
nnoremap <C-W>c :tabnew<cr>
nnoremap <C-W>n :tabn<cr>
nnoremap <C-W>p :tabp<cr>
" }}}

" File Explorer {{{
nnoremap <C-N> :Lexplore<cr> " Open file explorer in a left split
nnoremap <leader><leader> <C-^> " Switch between last buffer and current buffer
" }}}

""" Terminal {{{
map <leader>t :terminal<cr>
" }}}

" Enables folding for this file
set modelines=1
" vim:foldmethod=marker:foldlevel=0
