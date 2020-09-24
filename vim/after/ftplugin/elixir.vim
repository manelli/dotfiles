" Elixir specific settings

" No automatic insertion of comments
setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" ALE fixers
let b:ale_fixers = ['mix_format']
let :ale_fix_on_save = 1

" Shortcuts
" ---------
" leader + d inserts IEx.pry
nmap <leader>d orequire IEx; IEx.pry<Esc>
