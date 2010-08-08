
" Author : Pranesh Srinivasan
" Date First Edited : 14th March 2008
"
" Modified by : Naveen Kumar Molleti
" Date        : [lots of times :P]
"
" Works with the following plugins
" 	cvim - for various c/c++ utils Start a C/C++ file & read the docs
" 	crefvim - for c reference in Vim Style
" 	taglist - for listing the entire project in a comfy manner. Try :TlistToggle
" 	(This has been currently mapped to F2)
"
"	latexSuite-1.5 - the ulitmate LaTeX IDE for VIM
" 	mruex 	- exploring most recently used files (in normal mode \r -
" 	recent) [DISABLED FOR THE TIME BEING]
"
" 	matrix - screensaver :) (:Matrix)
" 	
" 	backup of entire structure should be present in dcf accounts/other 
" 	hdd paritions called vim_config.tar.gz



colorscheme evening
syntax on
set nocompatible
set showmode
set ruler
set mousemodel=popup
set lz 	" do not redraw during macros - lazy redraw
set ai " autoindent
set si " smartindent
set gdefault
set incsearch "inc search to allow less typing in of chars
set matchpairs+=<:> "adds < > to the % jumping
set guioptions-=T " removes Toolbar from standard gvim
set foldenable
set tabstop=4
set shiftwidth=4
set number

"Visual Cues
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list


filetype plugin on "to switch on auto file detection and enable plugins


" -------------------- Normal Maps :) ------------
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>
map <F4> <Esc>:make<CR>

nmap <s-down>   <c-w>w
nmap <s-up>     <c-w>W
nmap <s-left>   <c-w>h
nmap <s-right>  <c-w>l


" ----------------------- Plugin Mappings  -----------
"
"------------------------------------------------------
nmap <F2> <Esc>:TlistToggle<CR>


"au BufWinLeave * mkview "This is to keep marks etc.. in storage.

"------------------------ File Hooks follow ------------
" A few autocmd commands follow

autocmd FileType c,cpp call <SID>ccomstuff()
autocmd FileType c call <SID>cstuff()
autocmd FileType cpp call <SID>cppstuff()

function <SID>ccomstuff()
	set cindent
	set formatoptions+=croql
	set formatoptions-=t
	map <F6> <Esc>:!./a.out<CR>
	"The following mapping puts function comment. Hover over name
	map \fc F "nyf("ry0f(l"ayf)O/*<Esc>54A-<Esc>o<Esc>"npxoArgs: <Esc>"apxoReturns: <Esc>"rpoThrows:<CR>See:<CR>Bugs:<CR><Esc>54A-<Esc>a*/<Esc>6kA -- <Esc> 	
endfunction

function <SID>cstuff()
	set makeprg=gcc\ \"%\"
	nmap <m-a> <Esc>:!ctags *.c *.h<CR>
endfunction

function <SID>cppstuff()
	set makeprg=g++\ \"%\"
	nmap <m-a> <Esc>:!ctags *.cpp *.h<CR>
endfunction

