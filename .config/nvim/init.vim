:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'

Plug 'peitalin/vim-jsx-typescript'
Plug 'https://github.com/neoclide/coc-eslint'
Plug 'https://github.com/neoclide/coc-prettier'

Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

Plug 'rust-lang/rust.vim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter'

set encoding=UTF-8

call plug#end()

let g:airline_theme = 'wombat'
" let g:airline_section_z = '%3p%%'
let g:airline_section_z = "%p%%  %l/%L Col:%c"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

" autocmd VimEnter * NERDTree | wincmd p
