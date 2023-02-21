"    .......... ........ Plugins install (use :PlugInstall) ......... ......... "
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
Plug 'honza/vim-snippets'
"Plug 'jiangmiao/auto-pairs'                 " Autoclose ()[]''... etc
Plug 'tpope/vim-surround'                   " Alternative for auto-pairs
Plug 'ap/vim-css-color'                     " Colorize hexadecimal codes (util for css/html)
if (has("nvim"))
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()

" ......... ......... Global Settings ......... ......... "
syntax on		    " Syntax highlight
set nu 			    " Line numbers
set relativenumber  " 
set tabstop=4 		" Default is 8
set softtabstop=4   " others tab settings
set shiftwidth=4    " others tab settings
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
set clipboard+=unnamedplus
filetype on
filetype plugin on
filetype indent on

" ......... ......... THEMES ......... ......... "
if has('+termguicolors')
    set termguicolors
endif

let g:sonokai_style='espresso'
let g:sonokai_diagnostic_line_highlight=1
let g:sonokai_better_performance=1

colorscheme sonokai

" ......... ......... REMAPS ......... ......... "
source $HOME/.config/nvim/remaps.vim

" ......... ......... AUTOCMD ......... ......... " 
" Ativado automaticamente quando algum evento ocorre
source $HOME/.config/nvim/autocmds.vim

" ......... .........  PLUGINS CONFIGS ......... ......... "
source $HOME/.config/nvim/plug_airline.vim
source $HOME/.config/nvim/plug_nerdtree.vim
source $HOME/.config/nvim/plug_ale.vim

if (has("nvim")) " Specific for neovim
    source $HOME/.config/nvim/plug_telescope.vim
endif

" COC (Conquer of Completion) SEMPRE NO FINAL DO ARQUIVO
source $HOME/.config/nvim/plug_coc.vim
source $HOME/.config/nvim/plug_coc_explorer.vim

