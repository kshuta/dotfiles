" add line number
set number
let mapleader = " "

" syntax highlighting
syntax on


" bind Ctrl-k to escape
:imap <C-k> <Esc>
:vmap <C-k> <Esc>
:nmap <C-k> <Esc>

" map line-head and line-tail to H and L
:map H ^
:map L $

" yank to clipboard
vnoremap <C-c> "*y

set autoindent
set smartindent
set smarttab

set visualbell
set showmatch


" different tab size for different languages
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype y setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype l setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype rs setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2s

filetype indent plugin on

" counting visual lines instead of actual lines
nmap j gj
nmap k gk

" tab to space
set expandtab


call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_gopls_enabled = 1
let g:go_code_completion_enabled = 1
let g:go_def_mode = 'godef'
let g:go_auto_type_info = 1

" go settings
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
autocmd BufEnter *.go nmap <leader>gd  <Plug>(go-def)
autocmd BufEnter *.go nmap <leader>hd  <Plug>(go-doc)

autocmd BufEnter *.rs nmap <leader>od  <Plug>(go-callers)
nmap <leader>r <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

nnoremap <silent> <leader>hd :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

function! s:show_documentation()
        if &filetype == 'vim'
                execute 'h '.expand('<cword>')
        else
                call CocAction('doHover')
        endif
endfunction

set hidden

" jupyter settings
nmap <space><space>x <Plug>JupyterExecute
nmap <space><space>X <Plug>JupyterExecuteAll
nmap <space><space>r <Plug>JupyterRestart

" color scheme
colorscheme PaperColor
set background=dark
