let mapleader=" "
set autoread
au FocusGained,BufEnter * checktime

set hidden
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing
set noswapfile
set termguicolors
set nobackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set nowritebackup
set noerrorbells
set rnu
set nu
set so=7
set incsearch
set laststatus=2
set showcmd
set notimeout
set ttimeout
" ---- Default Spacing Rules
set smartindent   " Do smart autoindenting when starting a new line
set autoindent
set expandtab     " When using <Tab>, put spaces instead of a <tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
Plug 'unblevable/quick-scope', Cond(exists('g:vscode'))
Plug 'andymass/vim-matchup', Cond(exists('g:vscode'))
Plug 'tpope/vim-surround', Cond(exists('g:vscode'))
call plug#end()

vmap X y/<C-R>"<CR>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
nnoremap Q @q
nnoremap Y y$
noremap H  ^
noremap L  $
noremap : ;
noremap ; :
nmap <silent> <F7> <plug>(matchup-hi-surround)

highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']


xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine


vmap X y:argdo /<C-R>"/
