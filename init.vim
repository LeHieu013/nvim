" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/html5.vim'
Plug 'kien/ctrlp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'ervandew/supertab'


"COC setings is below
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()

set rnu
syntax on
set tabstop=4
set shiftwidth=4
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
set expandtab
colorscheme delek
set nowrap

let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_use_caching = 0
let g:user_emmet_leader_key='<CR>'
autocmd FileType html,css,scss EmmetInstall
nmap <C-m> :vertical res 100<Enter>


if has('nvim')
    let g:python3_host_prog = '/usr/bin/python3'
else
    set pyxversion=3
endif

autocmd CursorHold * silent call CocActionAsync('highlight')
"Reverse suprtteb order
let g:SuperTabDefaultCompletionType = "<c-n>"
nmap <F2> :!python %<CR>
