"PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"param
"PiCONGPU
"au BufNewFile,BufRead,BufReadPost *.param set filetype=cpp
au BufNewFile,BufRead,BufReadPost *.param set filetype=bash
au BufNewFile,BufRead,BufReadPost *.kernel set filetype=cpp

"backspace on OSX
set backspace=indent,eol,start

"dynamic python

"maxwell
set pythonthreedll=/gpfs/exfel/data/user/juncheng/miniconda3/lib/libpython3.7m.so.1.0
set pythonthreehome=/gpfs/exfel/data/user/juncheng/miniconda3
"OSX
"set pythonthreedll=/Users/juncheng/miniconda3/lib/libpython3.6m.dylib
"set pythonthreehome=/Users/juncheng/miniconda3


"airline buffer
let g:airline#extensions#tabline#enabled = 1
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Move to the next buffer
nmap <leader>] :bnext<CR>
"nmap ]b :bnext<CR>
" Move to the previous buffer
nmap <leader>[ :bprevious<CR>
"nmap [b :bprevious<CR>
" Unload the previous buffer
nmap <leader>q :bd<CR>

"gutentags
"DEBUG
"let g:gutentags_define_advanced_commands = 1
"let g:gutentags_trace = 1

"let g:gutentags_ctags_executable='ctags'
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.git']
let g:gutentags_cache_dir = ".tags"
let g:gutentags_exclude_filetypes = ['python']

" Maxwell
let g:gutentags_cache_dir = expand('/beegfs/desy/user/juncheng/.cache/vim/tags/')
" OSX
"let g:gutentags_cache_dir = expand('~/.cache/vim/tags/')

" statusline
"let g:airline#extensions#gutentags#status = 1
let g:airline#extensions#gutentags#enabled = 1
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
"Find this C symbol
noremap <silent> <leader>ss :GscopeFind s <C-R><C-W><cr>
"Find this definition
noremap <silent> <leader>sg :GscopeFind g <C-R><C-W><cr>
"Find places where this symbol is assigned a value
noremap <silent> <leader>sa :GscopeFind a <C-R><C-W><cr>
"Find functions called by this function
noremap <silent> <leader>sd :GscopeFind d <C-R><C-W><cr>
"Find functions calling this function
noremap <silent> <leader>sc :GscopeFind c <C-R><C-W><cr>
"Find this text string
noremap <silent> <leader>st :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>se :GscopeFind e <C-R><C-W><cr>
"Find this file
noremap <silent> <leader>sf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
"Find files #including this file
noremap <silent> <leader>si :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>



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
	" jedi
	let g:jedi#goto_command = "<leader>sg"
	let g:jedi#goto_assignments_command = "<leader>sa"
	let g:jedi#goto_definitions_command = ""
	let g:jedi#documentation_command = "K"
	let g:jedi#usages_command = "<leader>sc"
    let g:jedi#completions_command = ""
	let g:jedi#rename_command = "<leader>r"
endif
"Jedi-vim
" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = 0
let g:jedi#auto_initialization = 1

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



"NERDTree
nmap <Leader>f :NERDTree<CR>

"Ctag
"let g:tagbar_ctags_bin='ctags'  " Proper Ctags locations

"Tagbar
nmap tb :TagbarOpen fj<CR>

"PATH change
command Cdpwd :cd %:h

"Quick fix
"jump in cw indow
nmap <C-n> :cnext<CR>
"Not cp because of conflicts
nmap <C-k> :cp<CR>
"cscope
"set cscopetag cscopeverbose
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"key bind
"Find this C symbol
"nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
"Find this definition
"nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
"Find functions called by this function
"nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
"Find functions calling this function
"nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
"Find this text string
"nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
"Find this file
"nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
"Find files #including this file
"nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
"Find places where this symbol is assigned a value
"nmap <leader>sa :cs find a <C-R>=expand("<cword>")<CR><CR>

"flake8
let g:flake8_show_in_gutter=1

"clipboard
command Clip set clipboard=unnamed

"jupyter-vim
set pyxversion=3
"edit  ~/.jupyter/jupyter_qtconsole_config.py
"add this:
"c.ConsoleWidget.include_other_output = True

"ncm2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

"maxwell
let g:python3_host_prog='/gpfs/exfel/data/user/juncheng/miniconda3/bin/python3'
"OSX
"let g:python3_host_prog='/Users/juncheng/miniconda3/bin/python3'

"vim-latex

"OSX
let g:Tex_ViewRule_pdf = 'skim'

" Do bibtex after latex
let g:Tex_MultipleCompileFormats='dvi,pdf' 

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
let s:extfname= expand("%:e")
if s:extfname==? "tex"
	if empty(v:servername) && exists('*remote_startserver')
		call remote_startserver('VIM')
	endif
	set sw=2
	" TIP: if you write your \label's as \label{fig:something}, then if you
	" type in \ref{fig: and press <C-n> you will automatically cycle through
	" all the figure labels. Very useful!
	set iskeyword+=:
endif
