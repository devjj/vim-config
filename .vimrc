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

" Set up command for FuzzyFinder Textmate
map <leader>t :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>

" Set up command for NERDTree
map <leader>n :NERDTree<CR>

let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70
