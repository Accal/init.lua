set nocompatible            " disable compatibility to old-time vi
set expandtab               " converts tabs to white space
set number                  " add line numbers
filetype plugin indent on   "	allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set mouse=a

call plug#begin()
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	Plug 'sheerun/vim-polyglot'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-rhubarb'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'mileszs/ack.vim'
 	Plug 'itchyny/lightline.vim'
call plug#end()

" Map FzF to C-P
nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>

" Set up emterprise github url for vim-fugitive
let g:github_enterprise_urls = ['https://github.beeone.at']

" Set filetype only if it wasn't set
au BufRead,BufNewFile *gotmpl setfiletype go

" Lightline setup
let g:lightline = { 'colorscheme': 'catppuccin' }
set noshowmode

" Catppuccin setup
let g:catppuccin_flavour = "mocha"

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
