call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'gruvbox-community/gruvbox'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" highlight line
" set cursorline

" set guicursor=
" set guicursor=a:blinkon1

" columns at left
set signcolumn=yes

" editing limit column
set colorcolumn=120

" more colors support
" set termguicolors " se estiver dentro do tmux, não carrega cor alguma.

" no swap file
set noswapfile

" line numbers
set number

" relative numbers
set relativenumber

" scroll 'padding'
set scrolloff=8

" faster update time
set updatetime=100

" any case
set ignorecase

" incremental search
set incsearch

" hightlight search
set hlsearch

" leader
let mapleader = ' '

" Nord
colorscheme nord

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_section_b=''
let g:airline_section_y=''

" Fugitive (tentando remover o nome do branch para liberar mais espaço)
" let g:flagship_skip = 'fugitive#statusline\|FugitiveStatusline'
" set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
" set statusline=%<%f\ %h%m%r%{}%=%-14.(%l,%c%V%)\ %P

" Gruvbox
" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
" set background=dark
" highlight Normal ctermbg=NONE guibg=NONE
" highlight SignColumn ctermbg=NONE guibg=NONE
" highlight GitGutterAdd ctermbg=NONE guibg=NONE
" highlight GitGutterChange ctermbg=NONE guibg=NONE
" highlight GitGutterDelete ctermbg=NONE guibg=NONE
" highlight GitGutterChangeDelete ctermbg=NONE guibg=NONE

" ALE
" set completeopt=menu,menuone,preview,noselect,noinsert
" set completeopt=noselect
" let g:ale_completion_enabled=1
" let g:deoplete#enable_at_startup = 1
set omnifunc=ale#completion#OmniFunc
nnoremap <leader>ad :ALEGoToDefinition<cr> 
nnoremap <leader>ar :ALEFindReferences<cr> 
nnoremap <leader>ah :ALEHover<cr>
nnoremap <leader>af :ALEFix<cr>

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'

" anula alguns atalhos para evitar 'acidentes'
nnoremap <silent> Q <nop>
nnoremap <silent> <C-Z> <nop>

" clear the search
nnoremap <silent> <C-N> :nohlsearch<cr>

" config edit
nnoremap <leader>oc :e ~/.vim/vimrc<cr>

" config reload
nnoremap <leader>cr :source ~/.vim/vimrc<cr>

" romadocs
nnoremap <leader>ord :e ~/projetos/romadocs<cr>

" to do
nnoremap <leader>otd :e ~/Área\ de\ Trabalho/z-todo.md<cr>

" save
nnoremap <leader>w :w<cr>

" quit
nnoremap <leader>q :q<cr> " não sei se gosto disso :) 

" buffer del
nnoremap <leader>d :bd<cr>

" buffer next
nnoremap <leader>n :bn<cr>
nnoremap <silent> <F8> :bn<cr>

" buffer previous
nnoremap <leader>p :bp<cr>
nnoremap <silent> <F7> :bp<cr>

" fzf
nnoremap <leader>sg :GFiles<cr> 
nnoremap <leader>sm :GFiles?<cr> 
nnoremap <leader>sf :Files<cr>
nnoremap <leader>sb :Buffers<cr>
nnoremap <leader>sw :Ag<cr>

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/]\.(git)|node_modules|tmp$'

" o vim-rails está setando arquivos yml como eruby e dando problema no lint.
" como redefinir isso? a linha abaixo não está funcionando.
" autocmd BufNewFile,BufReadPost *.yml set filetype=yaml

" configurações adicionais para o highlight do Go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

