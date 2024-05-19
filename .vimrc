" Bundle Plugin Manager Setup"
set nocompatible              " be iMproved, required
filetype off                  " required

" Backspace Magic"
set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    
    "Auto complete engine"
    Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

"indentation settings
set expandtab
set tabstop=4
set shiftwidth=4

"themeing and number line
set relativenumber
syntax enable

"autocompletion engine
packloadall

call plug#begin()
    "File manager"
    Plug 'preservim/nerdtree'
    "Dracula Themes"
    Plug 'sainnhe/sonokai'
    "Airline bottom Bar"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Golang 
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Run :PlugInstall to install the plugin.
call plug#end()

"file tree shortcuts
map <C-z> :NERDTreeToggle<CR><C-w>5< 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1 

"auto complete
let g:ycm_semantic_triggers = {
	\   'c': [ 're!\w{1}' ],
    \   'cpp': [ 're!\w{1}' ],
    \   'go': [ 're!\w{1}' ],
	\ }

"auto term shortcut
nnoremap <C-t> :bel term<CR><C-w>10-

"go jump definition
nnoremap <C-j> :YcmCompleter GoToDefinition<CR>

"save
nnoremap <C-s> :w<CR>

" Important!!
if has('termguicolors')
  set termguicolors
endif
colorscheme sonokai

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1

let g:airline_theme = 'deus'

"shortcuts for tabs
set splitright
nnoremap <C-n> :tabnext<CR>
nnoremap <C-b> :tabprevious<CR>

"Vim motion in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
