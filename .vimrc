call plug#begin()

Plug 'krasjet/auto.pairs'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
set noswapfile

let g:rustfmt_autosave = 1

nnoremap <space>f :CtrlP<CR>
let g:ctrlp_custom_ignore = 'target\|migrations'

nnoremap <C-c> :NERDTreeToggle<CR>

set signcolumn=no
highlight! CocInlayHint guifg=#AF005F ctermfg=1 guibg=NONE ctermbg=NONE
highlight! CocFloating ctermbg=0 ctermfg=15
highlight! CocMenuSel ctermbg=242
highlight! CocSearch ctermbg=0 ctermfg=12
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


call plug#end()
