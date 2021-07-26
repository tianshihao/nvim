"
" my preferred settings 
"
set secure
set number
set relativenumber
set cursorline
set tabstop=2
set shiftwidth=2
set textwidth=80
set softtabstop=2
set termencoding=utf-8
set nocompatible
set ruler
set incsearch
set hlsearch

"
" Specify a directory for plugins
" For Neovim: stdpath('data'_) . 'plugged'
" Avoid using standard Vim directory names like 'plugin'
"
call plug#begin('C:/Users/tianshihao/AppData/Local/nvim/plugged')

" Editor enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'release'}
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'tpope/vim-capslock' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'easymotion/vim-easymotion'
Plug 'joshdick/onedark.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'

Plug 'vim-airline/vim-airline'

call plug#end()

filetype plugin indent on

"
" Basic mapping
" <C> stands for control, <S> stands for shift, <CR> stands for return, <SPACE> stands for sapce.
" 

" Config <LEADER>.
let mapleader=" "

" Back to normal
inoremap jj <ESC>

" Save and quit.
nnoremap s :w<CR>
nnoremap S :w!<CR>
nnoremap x :q<CR>

" Swap x/X and t/T, I don't need till.
nnoremap t x
nnoremap T X

" Open the init.vim file anytime.
noremap <LEADER>rc :e C:/Users/tianshihao/AppData/Local/nvim/init.vim<CR>

" Tab out of brackets.
func TabOut()
	if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'|| getline('.')[col('.') - 1] == '>'
		return "\<ESC>la"
	else
		return "\t"
	endif
endfunc

inoremap <TAB> <c-r>=TabOut()<CR>

" Coc-explorer 
nmap <LEADER>e :CocCommand explorer<CR>
""nmap <C-S-e> :CocCommand explorer<CR>

syntax enable
" set background=dark
colorscheme onedark

" ===
" === Coc configuration
" ===
" Set internal encodoing of vim, not needed on neovim, since coc.nvim using
" some unicode characters in the file autoload/float.vim.
set fileencodings=utf-8

" TextEdit might fail if hidden is not set.
" If set nohidden, a new window will be setup when use bnext/bprevious.
set hidden

" Some servers have issues with backup fies, see #649.
set nobackup
set nowritebackup

" Give more space for displaying message.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Goto code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <LEADER>rn <Plug>(coc-rename)

" Window switch
" nmap J <C-w><C-h>
" nmap K <C-w><C-l>
nmap J :tabnext<CR>
nmap K :tabprevious<CR>

map f <Plug>Sneak_s
map F <Plug>Sneak_S

