"PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"param
au BufNewFile,BufRead,BufReadPost *.param set filetype=cpp
au BufNewFile,BufRead,BufReadPost *.kernel set filetype=cpp

"backspace on Mac
set backspace=indent,eol,start

"airline buffer
let g:airline#extensions#tabline#enabled = 1
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Move to the next buffer
nmap <leader>] :bnext<CR>
" Move to the previous buffer
nmap <leader>[ :bprevious<CR>

"gutentags
"let g:gutentags_ctags_executable='ctags'
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.git']
let g:gutentags_cache_dir = ".tags"

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
"colorscheme darkblue
set laststatus=2 
set background=dark
set cursorline
"set t_Co=256

"Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"ayu-vim
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"filecoding
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,shift-jis,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"Neocomplcache
let g:neocomplcache_enable_at_startup = 1

"NERDTree
nmap <Leader>f :NERDTree<CR>

"Ctag
"let g:tagbar_ctags_bin='ctags'  " Proper Ctags locations

"Tagbar
nmap tb :TagbarToggle<CR>

"PATH change
command Cdpwd :cd %:h

"cscope
set cscopetag cscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-
"jump in cw indow
nmap <C-n> :cnext<CR>
"No cp because of conflicts
"nmap <C-m> :cp<CR>
"key bind
"Find this C symbol
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
"Find this definition
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
"Find functions called by this function
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
"Find functions calling this function
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
"Find this text string
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
"Find this file
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
"Find files #including this file
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
"Find places where this symbol is assigned a value
nmap <leader>sa :cs find a <C-R>=expand("<cword>")<CR><CR>

"flake8
let g:flake8_show_in_gutter=1

"clipboard
command Clip set clipboard=unnamed
