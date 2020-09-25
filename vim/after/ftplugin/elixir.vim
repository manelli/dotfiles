" Elixir specific settings

" No automatic insertion of comments
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcuts
" ---------
" leader + d inserts IEx.pry
nmap <leader>d orequire IEx; IEx.pry<Esc>

" :Format
command! -nargs=0 -complete=file Format execute ':w|:!clear; mix format %'

" :XrefGraph sink|source
command! -nargs=1 -complete=file XrefGraph execute ':!clear; mix xref graph --<args> %'

" :XrefCallers MyModule
command! -nargs=1 -complete=file XrefCallers execute ':!clear; mix xref callers <args>'
