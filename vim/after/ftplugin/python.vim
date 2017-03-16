" Python specific settings

let python_highlight_all=1

setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4

" Smart indenting
setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Highlight characters that go over 79 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" No automatic insertion of comments
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcuts
" ---------
" run current file with ruby
nmap <leader>r :!clear; python %<cr>

" leader + d inserts debugger
nmap <leader>d oimport code; code.interact(local=dict(globals(), **locals()))<Esc>

" comment
map <leader>c :s/^/# /<CR>
" uncomment
map <leader>u :s/^# //e<CR>
