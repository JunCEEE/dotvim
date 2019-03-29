"PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"param
au BufNewFile,BufRead,BufReadPost *.param set filetype=cpp

"Basic setup
set nocompatible
set autoindent
filetype plugin on
syntax on
set nu
set ignorecase
set smartcase
set shiftwidth=4
set ts=4 "set the number of space of <tab>

"python
let s:extfname= expand("%:e")
if s:extfname==? "py"
	set tabstop=4 
	set shiftwidth=4
	set softtabstop=4
	set tabstop=4       " The width of a TAB is set to 4.
						" Still it is a \t. It is just that
						" Vim will interpret it to be having
						" a width of 4.

	set shiftwidth=4    " Indents will have a width of 4

	set softtabstop=4   " Sets the number of columns for a TAB

	set expandtab       " Expand TABs to spaces
endif

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
"set foldmethod=syntax


"LAYOUT
syntax enable
colorscheme darkblue
set laststatus=2 
set background=dark
set cursorline
"set t_Co=256


"filecoding
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,shift-jis,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"Neocomplcache
let g:neocomplcache_enable_at_startup = 1

"NERDTree
nmap <Leader>f :NERDTree<CR>

"Ctag
let g:tagbar_ctags_bin='~/bin/ctags'  " Proper Ctags locations

"Tagbar
nmap tb :TagbarToggle<CR>

"PATH change
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
