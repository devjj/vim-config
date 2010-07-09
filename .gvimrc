set lines=73
set columns=240
colorscheme ir_black
if &background == "dark"
    hi normal guibg=black
    set transp=8
endif
set gfn=Menlo\ Regular:h12
set guioptions=egmrt
set showtabline=2
map <silent> <leader>F :set fullscreen!<CR>
imap <silent> <leader>F <Esc>:set fullscreen!<CR>
