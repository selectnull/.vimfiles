:set guioptions-=T
:set ai ts=4 sts=4 et sw=4
:colorscheme desert
:set lines=56 columns=132
" Always cd to the current file's directory
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /

:set encoding=utf-8

:set scrolloff=4

:set ignorecase
:set smartcase

:set incsearch
:set hidden

let g:user_zen_leader_key = '<c-k>'

