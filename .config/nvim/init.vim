:set number
:set relativenumber
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

" Vim Fugitive
Plug 'https://github.com/tpope/vim-fugitive'

set encoding=UTF-8

call plug#end()

let g:airline_theme = 'wombat'
" let g:airline_section_z = '%3p%%'
let g:airline_section_z = "%p%%  %l/%L Col:%c"

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <F8> :TagbarToggle<CR>

lua require("after")

" autocmd VimEnter * NERDTree | wincmd p
