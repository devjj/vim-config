" -----------------------------------------------------------------------------  
" |                            VIM Settings                                   |
" |                   (see gvimrc for gui vim settings)                       |
" -----------------------------------------------------------------------------  

set nocompatible

" Tabs ************************************************************************
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set sta " a <Tab> in an indent inserts 'shiftwidth' spaces


" Indenting ********************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)


" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4


" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

"Vertical split then hop to new buffer
:noremap ,v :vsp^M^W^W<cr>
:noremap ,h :split^M^W^W<cr>


" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn


" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Misc ************************************************************************
set backspace=indent,eol,start
set number " Show line numbers

" Cursor Movement *************************************************************
" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge


" Ruby stuff ******************************************************************
compiler ruby         " Enable compiler support for ruby
map <F5> :!ruby %<CR>


" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete " may require ruby compiled in

" fuzzyfinder_textmate ********************************************************
map ,t :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>
"let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db'

" Fuzzyfinder *****************************************************************
" Fuzzy finder rocks, like Command-T in TextMate (buggy at moment, fix!!)
"let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'MruFile':{}, 'FavFile':{}, 'Dir':{}, 'Tag':{}, 'TaggedFile':{}}
"let gf:FuzzyFinderOptions.Base.abbrev_map = { "^Project-" : ["**/"], }
"let g:FuzzyFinderOptions.Base.migemo_support = 0
"let g:FuzzyFinderOptions.File.excluded_path = '\v\~$|\.o$|\.git/|\.DS_Store|\.exe$|\.bak$|\.swp$|((^|[/\\])\.[/\\]$)'
map ,f :FuzzyFinderFile<CR>
"map ,b :FuzzyFinderBuffer<CR>

" autocomplpop ***************************************************************
" complete option
"set complete=.,w,b,u,t,k
"let g:AutoComplPop_CompleteOption = '.,w,b,u,t,k'
"set complete=.
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2

