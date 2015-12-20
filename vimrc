set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'
Plugin 'sjl/badwolf'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'toyamarinyon/vim-swift'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'nvie/vim-flake8'
Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab

set ignorecase
set smartcase

set laststatus=2

let g:airline#extensions#tabline#enabled = 1

set nu

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ignore some files
let g:ctrlp_custom_ignore='tmp$\|\.git$\|\.hg$\|\.svn$\|\.pyc$\|\.png$\|\.jpg$\|\.otf$\|\.woff$\|\.mp3$\|\.ico$\|\.pdf$\|\.woff2$\|\.ttf$\|\.eot$\|\.svg$'

" Ignores .pyc files from searches and stuff

let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>G :YcmCompleter GoToImplementation<CR>

" Leader = ,
let mapleader = ","
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" Go to start of line with H and to the end with $
noremap H ^
noremap L $
noremap <leader>fs :set lines=999 columns=9999<cr>

" Easy buffer navigation
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bw<CR>

nmap <S-Enter> O<Esc>

colorscheme badwolf

set relativenumber

let g:session_autosave = 'yes'
let g:session_autoload = 'no'

" tell it to use an undo file
set undofile
set undodir=~/.vimundo/

" Supress warning when moving out from unsaved buffers
set hidden

" Supress warning when reloading file
setl autoread

silent! nmap <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" Map for tagbar
nmap <F8> :TagbarToggle<CR>


if filereadable('.vimrclocal')
  so .vimrclocal
endif
