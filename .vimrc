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
nmap <C-F> :NERDTree<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
nmap <C-T> :TagbarToggle<CR>
