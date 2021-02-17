set exrc " Load the vim file in the directory we are at

" Tab Fixing
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Number stuff
set relativenumber
set nu

" Search thing or something
set nohlsearch

" Keeps any buffer ive been editing around in the background
" Aka close file without saving it
set hidden

" NO NOISES BAAAAA
set noerrorbells

" No wrapping the text obviously
set nowrap

" Keep history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" highlight as you search
set incsearch

" Start scrolling when u are 8 lines away from the bottom
set scrolloff=8


" Adds the bar to the left to show stuff
set signcolumn=yes

" Big bar on the right to show too long file
set colorcolumn=80

call plug#begin('~/.vim/plugged')

" Plug 'gruvbox-community/gruvbox'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader = " "
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>