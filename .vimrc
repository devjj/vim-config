" Show line numbers
set number

" Use 2 spaces for tabs, turn on automatic indenting
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent

" Turn on highlighted search and syntax highlighting
set hlsearch
syntax on

" Turn on line highlighting
set cursorline

" Set leader to comma
let mapleader = ","

" Set up commands for FuzzyFinder and FuzzyFinderTextMate
map <leader>t :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>f :FuzzyFinderFile<CR>
map <leader>r :ruby finder.rescan!<CR>:FuzzyFinderRemoveCache<CR>

" Fuzzy options
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

" Set up command for NERDTree
map <leader>n :NERDTree<CR>

" Make backspace work the way it should
set backspace=2

" Make backspace and cursor keys wrap accordingly"
set whichwrap+=<,>,h,l

" Set search to automatically show the next match while typing
:set incsearch

" Add a status line by default
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set laststatus=2
