"PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set autoindent
filetype plugin on
syntax on
set nu
set ignorecase
set smartcase
set shiftwidth=4
set ts=4 "set the number of space of <tab>
"set clipboard=unnamed

"SHOWMARKS
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

"LAYOUT
set laststatus=2 
set background=dark
set cursorline
set t_Co=256
colorscheme solarized


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
set csprg=/usr/local/bin/cscope
set cscopetag cscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

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
