" My nvim configuration =)

set hidden
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set conceallevel=0
set nofoldenable

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'

" markdown config
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1

" plugins management
call plug#begin('~/.local/share/nvim/plugged')

" git plugins
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" auto-comment
Plug 'tpope/vim-commentary'

" finder
Plug 'kien/ctrlp.vim'

" tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Rust
Plug 'rust-lang/rust.vim'

" Elm
Plug 'elmcast/elm-vim'

call plug#end()

