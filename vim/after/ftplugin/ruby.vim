" Ruby specific settings

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" No automatic insertion of comments
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcuts
" ---------
" run current file with ruby
nmap <leader>r :!clear; ruby %<cr>

" leader + d inserts binding.pry
nmap <leader>d orequire 'pry'; binding.pry<Esc>
