set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'mrtazz/simplenote.vim'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround'
Plugin 'thoughtbot/vim-rspec'
Plugin 'terryma/vim-expand-region'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-vinegar'
call vundle#end()

syntax on
filetype plugin indent on

set background=dark
colors solarized
set splitright
scriptencoding utf-8
set encoding=utf-8
set modelines=0

set formatoptions-=t

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set clipboard=unnamed
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set lazyredraw
set ttyfast
source ~/.simplenote

set timeoutlen=1000 ttimeoutlen=0
nnoremap go o<ESC>k
nnoremap gO O<ESC>j
nnoremap gr o<ESC>kO<ESC>j
imap jj <Esc>

let mapleader = ','

let g:ctrlp_show_hidden = 1

map q: :q
let g:hardtime_default_on = 1

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
nmap <leader><leader> :noh<CR>
fu! Tabs()
  nnoremap <Leader>o :tabe<CR>
  nnoremap <Leader>] :tabn<CR>
  nnoremap <Leader>[ :tabp<CR>
  nnoremap <Leader>1 1gt
  nnoremap <Leader>2 2gt
  nnoremap <Leader>3 3gt
  nnoremap <Leader>4 4gt
  nnoremap <Leader>5 5gt
endfu
call Tabs()

noremap <leader>m :Autoformat<CR>
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap \ :Ag<Space>
noremap <Leader>/ :Commentary<CR>
noremap cp yap<S-}>p
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nnoremap <Leader>v <C-w>v<C-w>l
nnoremap <Leader>h <C-w>s<C-w>j

nnoremap <Leader>z <C-W>\|<C-W>_
nnoremap <Leader>= <C-W>=

nnoremap <Leader>V V`]
nnoremap <Leader>g :!tig --all<CR>
set autoread
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
nnoremap / /\v
nnoremap <Leader>b :CtrlPBuffer<CR>
let g:hardtime_maxcount = 3
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
noremap <S-l> gt
noremap <S-h> gT
nnoremap <tab> <C-W>w
vnoremap <tab> <C-W>w
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
set wrap
set linebreak
set nolist
set textwidth=0
set formatoptions=qrn1
set colorcolumn=85

nnoremap <leader>. :CtrlPTag<cr>
nnoremap j gj
nnoremap k gk

let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
set list listchars=tab:\|»,trail:·

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_check_on_wq = 0
let g:ctrlp_user_command = 'ag %s --files-with-matches --nocolor --hidden --skip-vcs-ignores -g ""'
" let g:ruby_path = system('echo $HOME/.rbenv/shims')

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
