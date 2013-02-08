:set guioptions-=T
:set guioptions-=m

:set ai ts=4 sts=4 et sw=4
" Always cd to the current file's directory
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /

:set encoding=utf-8

:set scrolloff=4

:set ignorecase
:set smartcase

:set incsearch
:set hidden

let g:user_zen_leader_key = '<c-k>'

:filetype plugin on

:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

set shortmess+=I

:imap jj <Esc>

" colorscheme options for gvim
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set background=dark
colorscheme solarized

" clipboard
set clipboard=unnamedplus

" respace function sets unix line endings, removes trailing whitespace,
" and converts TABs to spaces
function! ReSpace()
    :retab
    :%s/\s\+$//
    :set ff=unix
endfunction

