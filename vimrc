let &term=&term
set nocompatible              " required
set backspace=indent,eol,start
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
"Bundle 'Valloric/YouCompleteMe'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
set shiftwidth=4
set autoindent
set ignorecase
set smartcase
set incsearch
set hlsearch

execute pathogen#infect()
au BufNewFile,BufRead set syntax=python

" Syntax checking/highlighting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let python_highlight_all=1
let g:syntastic_python_checkers=['python3','flake8']
syntax on


 " option name default optional
 " ------------------------------------------------ 
 "  g:solarized_termcolors= 16 | 256
 "  g:solarized_termtrans = 0 | 1 
 "  g:solarized_degrade = 0 | 1
 "  g:solarized_bold = 1 | 0 
 "  g:solarized_underline = 1 | 0 
 "  g:solarized_italic = 1 | 0 
 "  g:solarized_contrast = "normal"| "high" or "low"
 "  g:solarized_visibility= "normal"| "high" or "low"
 "  ------------------------------------------------

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
if has('gui_running')
	let g:solarized_degrade=1 
	let g:solarized_termcolors=256
	syntax enable
	set background=dark
	let g:solarized_contrast='high'
	colorscheme solarized
	call togglebg#map("<F5>")
endif

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Split navigations
" Use nnoremap to remap one key combination to another.
" The no part means remap the key in normal mode as opposed to visual mode.
" Basically, nnoremap <C-J> <C-W><C-j> says, in normal mode when I hit <C-J>,
" do <C-W><C-j> instead
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <Space> za

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

:highlight Search ctermbg=6

set number
set mouse=v "set mouse=a
