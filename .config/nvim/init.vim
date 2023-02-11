call plug#begin(has('nvim') ? stdpath('data') . 'plugged' : '$HOME/.config/nvim/plugged')
Plug 'sainnhe/sonokai'                      " NeoVim Theme
Plug 'vim-airline/vim-airline'              " Best status bar
Plug 'vim-airline/vim-airline-themes'       " Theme for status bar
Plug 'ryanoasis/vim-devicons'               " Show icons Nerd Font
Plug 'sheerun/vim-polyglot'                 " Syntax highlight
Plug 'preservim/nerdtree'                   " Left dir tree (Toogle with Ctrl+a)
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'                   " Permite configurar Linter e Fixes para certas linguagens
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
call plug#end()


" ... GLOBAL Sets ... " Configurações globais
syntax on		    " Syntax highlight
set nu 			    " Line numbers
set relativenumber  " 
set tabstop=4 		" Default is 8
set softtabstop=4   "
set shiftwidth=4    "
set expandtab 		" TAB insert 4 spaces
set smartindent
set hidden 		    " Hidden the current buffer when new file is open
set incsearch 		" Incremental search
set ignorecase 		" Ignore case in search
set smartcase		" Consider case if there is a upper case char
set scrolloff=6		" Minimun number of lines to keep above and below of cursor
set colorcolumn=80	" Draws a line in the indicate column
set signcolumn=yes	" Add a column on left, util for linter
set cmdheight=2
set updatetime=4000 " Default
set encoding=utf-8  " To activate font icons
set nobackup        " No backup files
set nowritebackup   " no backup files
set splitright      "
set splitbelow
set autoread
set mouse=a
set laststatus=2    " Required for Airline
filetype on
filetype plugin on
filetype indent on



" ... THEMES ... "
if has('+termguicolors')
    set termguicolors
endif

let g:sonokai_style='espresso'
let g:sonokai_diagnostic_line_highlight=1
let g:sonokai_better_performance=1

colorscheme sonokai
" ... REMAPS ... " (Re)Mapeamento de teclas



" ... AUTOCMD ... " Ativado automaticamente quando algum evento ocorre



" ... PLUGINS CONFIGS ... "
" AIRLINE "
let g:airline_theme='sonokai'               " Tema sonokai na barra inferior
let g:airline#extensions#tabline#enabled=1  " Habilia o buffer em TABS (superior)
let g:airline_powerline_fonts=1             " Usa a Nerd Fonts



" NERD TREE
nmap <C-a> :NERDTreeToggle<CR>              " Toggle tree with Ctrl+a


" ALE
let g:ale_linters={
            \}
let g:ale_fixers={
            \}
let g:ale_fix_on_save=1

