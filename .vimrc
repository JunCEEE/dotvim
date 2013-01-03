set nu
colorscheme molokai 
set laststatus=2 
syntax on
set cursorline
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set fileencoding=utf8
set fileencodings=ucs-bom,gb18030,utf-8,default
let g:neocomplcache_enable_at_startup = 1
filetype plugin on
nmap <Leader>f :NERDTree<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
nmap <C-T> :TagbarToggle<CR>
command Cdpwd :cd %:h
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
