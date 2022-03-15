" Elixir specific settings

" No automatic insertion of comments
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcuts
" ---------
" leader + d inserts IEx.pry
nmap <leader>d orequire IEx; IEx.pry<Esc>
