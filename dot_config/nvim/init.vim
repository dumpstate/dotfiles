syntax on			" syntax highlighting

set nocompatible		" no vi compatibility
set number			" line numbers
set ignorecase			" case insensitive search
set hlsearch			" highlight search
set incsearch			" incremental search
set autoindent			" new line at the same indent
set noswapfile			" no swap file
set nobackup			" no backup
set nowritebackup		" no backup
set showmatch			" show matching
set wildmode=longest,list	" bash-like tab completions
set mouse=a			" allow mouse
set ttyfast			" fast scrolling
set tabstop=4			" narrow tabs
set shiftwidth=4

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

call plug#end()

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
