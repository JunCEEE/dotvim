set nu
colorscheme molokai 
set laststatus=2 
syntax on
set cursorline
map <C-T> :NERDTree<CR>
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set fileencoding=utf8
set fileencodings=ucs-bom,gb18030,utf-8,default
