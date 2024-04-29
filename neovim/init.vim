" :PlugInstall

:cd c:\
set background=dark
set number
set hidden
set mouse=a
syntax enable


set cursorline
set nowrap
set laststatus=2
set hlsearch
set linespace=1
set clipboard=unnamedplus
set title
set showtabline=0


" TABS
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set noexpandtab
:retab!


nnoremap <C-s> :w<CR>


call plug#begin()

Plug 'Mofiqul/vscode.nvim'

Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'rust-lang/rust.vim'
Plug 'lukas-reineke/indent-blankline.nvim', { 'main': 'ibl' }

Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'

call plug#end()

colorscheme vscode


filetype plugin indent on
set t_Co=256

let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'z', 'error']
    \ ]
let g:airline_section_z = "P:%p%% L:%l/%L C:%c"


let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
let g:rust_recommended_style = 0
let g:neovide_scroll_animation_length = 0.4


" DON'T WORK
" colorscheme oxocarbon-lua
" Plug 'B4mbus/oxocarbon-lua.nvim'
" :GuiAdaptiveStyle
" :GuiAdaptiveColor 1
