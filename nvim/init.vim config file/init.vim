"Plugins

call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' ", {'on': 'NERDTreeToggle'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/ryanoasis/nerd-fonts' " Optional: Install Nerd Fonts for better icons
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar for code navigation
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/matze/vim-move'
Plug 'voldikss/vim-floaterm'
call plug#end()


set number
set relativenumber
set mouse=a
set encoding=UTF-8
set tabstop=4
set autoindent
set shiftwidth=4
set smarttab

" :colorscheme base16-onedark
:colorscheme onedark
let g:airline_theme='onedark'

":colorscheme gruvbox
"let g:airline_theme='gruvbox'

nmap <F8> :TagbarToggle<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
" NERDTree Configuration

nnoremap <C-g> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

" VIM AIRLINE CONFIGURATION

let g:airline_powerline_fonts = 1

" FUZZY FINDER Configuration
nnoremap <C-f> :Files <CR>
nnoremap <C-d> :GFiles <CR>
nnoremap <C-y> :Buffers <CR>
nnoremap <C-u> :Rg <CR>
nnoremap <C-i> :Tags <CR>

nnoremap <F2> :noh<CR>

let g:floaterm_keymap_new     = '<F4>'
let g:floaterm_keymap_prev    = '<F5>'
let g:floaterm_keymap_next    = '<F6>'
let g:floaterm_keymap_toogle  = '<F7>'


