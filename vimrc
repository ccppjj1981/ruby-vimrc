set nocompatible               " be iMproved
set encoding=utf8
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Plugin manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" number line show 
set nu

" input source improve for gui vim
if has("gui_running")
  set noimdisable
  set imi=2
  set ims=2
endif

set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight col and line
set cursorline
"set cursorcolumn

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","
" EasyMotion_leader_key .
" Plugin Plugin here for Ruby on Rails
" git
Plugin 'tpope/vim-fugitive'
" ruby command for rvm
Plugin 'tpope/vim-rvm'
" quickly move cursor, try ,,w 
Plugin 'Lokaltog/vim-easymotion'
" quickly write HTML, just like zencoding but simple engough
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
let g:sparkupNextMapping= "<c-m>"
" power vim plugin for rails
Plugin 'tpope/vim-rails.git'
" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete
" quickly comment your code, try ,cc on selected line
Plugin 'vim-scripts/The-NERD-Commenter'
" indent guides
let g:indent_guides_guide_size = 1
Plugin 'nathanaelkane/vim-indent-guides'
" indent guides shortcut
map <silent><F7>  <leader>ig

" file tree like something called IDE
Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTree<CR>
" coffeescript
Plugin 'kchmck/vim-coffee-script'
" basic dependence
Plugin 'L9'
" slim template support
Plugin 'slim-template/vim-slim.git'
" hack filetype for slim
autocmd BufNewFile,BufRead *.slim set filetype=slim
" quickly search file(s), use ctrl+p, F5 refresh
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map <c-o> :CtrlPBuffer<CR>
" supertab
Plugin 'SuperTab'

filetype plugin indent on     " required! 
syntax on

" sass highlight
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()
" support css word with -
set iskeyword+=-

" vim 7.4 backspace fix
set backspace=indent,eol,start

nnoremap cw ciw 
nnoremap dw diw 

inoremap jk <esc>
