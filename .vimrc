"PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"fortran
let s:extfname= expand("%:e")
if s:extfname==? "f90"
    let fortran_free_source=1
    unlet! fortran_fixed_source
else
    let fortran_fixed_source=1
    unlet! fortran_free_source
endif
let fortran_more_precise=1
let fortran_do_enddo=1
let fortran_have_tabs=1
let fortran_fold=1
let fortran_fold_conditionals=1
set foldmethod=syntax

set nocompatible
set fileformats=unix,dos
set autoindent
filetype plugin on
syntax on
set nu
set ignorecase
set smartcase
set shiftwidth=4
set ts=4 "set the number of space of <tab>
:set expandtab "replce TAB with space
:%retab! "replace TAB with space

"SHOWMARKS
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

"LAYOUT
set laststatus=2 
set background=dark
set cursorline
set t_Co=256
colorscheme darkblue


"MRU
nmap mru :MRU<CR>


set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,shift-jis,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let g:neocomplcache_enable_at_startup = 1
nmap <Leader>f :NERDTree<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
nmap tb :TagbarToggle<CR>
command Cdpwd :cd %:h
"cscope
set cscopetag cscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"YRshow
nnoremap <silent> <F11> :YRShow<CR>
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

" vimwiki
 let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/text',
    \ 'path_html': '~/Dropbox/vimwiki/html/',
	\ 'template_path' : '~/Dropbox/vimwiki/template',
    \ 'template_default': 'def_template',
    \ 'template_ext': '.html',
	\ 'nested_syntaxes': {'matlab': 'matlab', 'python': 'python', 'c++': 'cpp'},}]
let g:vimwiki_camel_case = 0

map <F5> <Plug>Vimwiki2HTML
nmap <F4> :VimwikiAll2HTML<CR>
if &filetype=='fortran'
set shiftwidth=1
endif
