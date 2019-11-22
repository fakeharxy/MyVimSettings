set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mtth/scratch.vim'
Plugin 'sukima/xmledit'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'slim-template/vim-slim'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround'
Plugin 'thoughtbot/vim-rspec'
Plugin 'terryma/vim-expand-region'
Plugin 'lad/vim-rubocop'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ervandew/supertab'
Plugin 'elmcast/elm-vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf.vim'
call vundle#end()

syntax on
filetype plugin indent on

set background=dark
colors solarized
set splitright
scriptencoding utf-8
set encoding=utf-8
set modelines=0
set autoread

set formatoptions-=t

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set lazyredraw
set ttyfast

set timeoutlen=1000 ttimeoutlen=0
nnoremap go o<ESC>k
nnoremap gO O<ESC>j
nnoremap gr o<ESC>kO<ESC>j
imap jj <Esc>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let mapleader = ','

map q: :q



let g:scratch_no_mappings = 1
nmap gs :ScratchInsert<CR>
nmap gS :Scratch<CR>
xmap gs :ScratchSelection<CR>
xmap gS :ScratchSelection!<CR>
let g:scratch_height=12

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
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nnoremap <Leader>t :TagbarToggle<CR><C-W>w
set tags=./tags,tags;$HOME
nnoremap \ :Ag<Space>
noremap <Leader>/ :Commentary<CR>
noremap cp yap<S-}>p
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nnoremap <Leader>v <C-w>v<C-w>l

nnoremap <Leader>z <C-W>\|<C-W>_
nnoremap <Leader>= <C-W>=

let g:rspec_command = "!bundle exec rspec --drb {spec}"

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
let g:hardtime_maxcount = 3
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
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
nnoremap <leader>s :RubocopThis<CR>
map <Leader>l :.Rails<CR>
map <Leader>a :AT<CR>
map <Leader>j :!jasmine<enter>
set wrap
set linebreak
set nolist
set textwidth=0
set formatoptions=qrn1
set colorcolumn=85

nnoremap j gj
nnoremap k gk

let g:list_of_normal_keys = ["h", "j", "k", "l", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
set list listchars=tab:\|»,trail:·

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set statusline+=%#warningmsg#
set statusline+=%*

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
