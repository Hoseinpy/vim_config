" General settings
set nocompatible              " Required
filetype off                  " Required

" Vim-Plug setup
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/bufferline.nvim', {'tag': 'v3.*'}
Plug 'windwp/nvim-autopairs'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

" Enable syntax highlighting and file type detection
syntax on

filetype plugin indent on

" Python specific settings
let g:python3_host_prog = '/usr/bin/python3'


" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" IndentLine settings
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'

" General settings
set mouse=a
set number
set cursorline

set hlsearch
set ignorecase
set smartcase

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm

colorscheme tokyonight

" Improve cursor visibility
if has("autocmd")
  augroup CursorShape
    autocmd!
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    au InsertEnter,InsertChange * silent execute '!echo -ne "\e[6 q"' | redraw!
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
  augroup END
endif

" Tabs and indentation
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set foldmethod=indent foldlevel=99

" Clipboard and swapfile
set clipboard=unnamedplus
set noswapfile

" Completion and snippets
set completeopt=menuone,noselect
let g:deoplete#enable_at_startup = 1

" Jedi settings
let g:jedi#completions_enabled = 1
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 0

" Set python environment dynamically based on active virtual environment
function! SetJediPythonEnvironment()
    if exists('$VIRTUAL_ENV')
        let g:jedi#python_environment = $VIRTUAL_ENV
    else
        let g:jedi#python_environment = ''
    endif
endfunction

autocmd VimEnter * call SetJediPythonEnvironment()

" Terminal and window settings
set termbidi
set splitbelow
set splitright

" Key mappings for convenience
nnoremap <C-p> :Telescope find_files<CR> " Fuzzy file search with Telescope
nnoremap <C-f> :Telescope live_grep<CR> " Fuzzy search within files
nnoremap <C-b> :Telescope buffers<CR> " List open buffers
nnoremap <C-g> :G<CR> " Git commands with Fugitive

" Custom highlight group for current line number
highlight LineNr ctermfg=green guifg=green
