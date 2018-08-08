"------vim-plug begin
call plug#begin('~/.vim/bundle')
    Plug 'shougo/vimproc.vim'
    "Plug 'gmarik/vundle'  
    "Plug 'L9'  
    Plug 'tpope/vim-fugitive'  
    Plug 'Lokaltog/vim-easymotion'  
    "Plug 'rstacruz/sparkup', {'rtp': 'vim/'}  
    "Plug 'tpope/vim-rails.git.git'  
    "Plug 'git://git.wincent.com/command-t.git'  
    "Plug 'bash-support.vim' 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    Plug 'Valloric/YouCompleteMe'
    "Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'terryma/vim-multiple-cursors'
    "Plug 'terryma/vim-expand-region'
    "Plug 'terryma/vim-smooth-scroll'
    Plug 'lilydjwg/fcitx.vim'
    Plug 'Yggdroot/indentLine'
    "Plug 'vim-latex/vim-latex'
    "Plug 'donRaphaco/neotex', { 'for': 'tex' }
    "Plug 'suan/vim-instant-markdown'
    Plug 'vim-scripts/tagbar'
    Plug 'w0rp/ale'
    "Plug '~/.fzf'
    Plug 'ctrlpvim/ctrlp.vim'
    "Plug 'myusuf3/numbers.vim'
    Plug 'mbbill/undotree'
call plug#end()
"------vim-plug end
 
"------for airline
	"if !exists('g:airline_symbols')
	"let g:airline_symbols = {}
	"endif
	"let g:airline#extensions#syntastic#enabled = 1
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline_powerline_fonts = 0
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_idx_mode = 1
	let g:airline#extensions#ale#enabled = 1
	"let &t_Co=256
	"let g:airline_theme='papercolor'
	let g:airline_theme='solarized'
	let g:airline_solarized_bg='dark'
	"I don't want to use too complicated symbols
	"let g:airline_left_sep = ''
	"let g:airline_left_alt_sep = ''
	"let g:airline_right_sep = ''
	"let g:airline_right_alt_sep = ''
	"very useful shortcuts
	nmap <Leader>1 <Plug>AirlineSelectTab1
	nmap <Leader>2 <Plug>AirlineSelectTab2
	nmap <Leader>3 <Plug>AirlineSelectTab3
	nmap <Leader>4 <Plug>AirlineSelectTab4
	nmap <Leader>5 <Plug>AirlineSelectTab5
	nmap <Leader>6 <Plug>AirlineSelectTab6
	nmap <Leader>7 <Plug>AirlineSelectTab7
	nmap <Leader>8 <Plug>AirlineSelectTab8
	nmap <Leader>9 <Plug>AirlineSelectTab9
	nmap <Leader>+ <Plug>AirlineSelectTabPrevTab
	nmap <Leader>- <Plug>AirlineSelectTabNextTab
"------for airline end

"------for YCM
	let g:ycm_show_diagnostics_ui = 0
	let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
	"let g:syntastic_c_checkers = [ 'gcc' ]
"------for YCM end
""------for syntactic
	"set statusline+=%#warningmsg#
	"set statusline+=%{SyntasticStatuslineFlag()}
	"set statusline+=%*

	"let g:syntastic_always_populate_loc_list = 1
	"let g:syntastic_auto_loc_list = 1
	"let g:syntastic_check_on_open = 1
	"let g:syntastic_check_on_open = 1
	"let g:syntastic_check_on_wq = 0
	"function! ToggleErrors()
		"let old_last_winnr = winnr('$')
			"lclose
		"if old_last_winnr == winnr('$')
			"" Nothing was closed, open syntastic error location panel
			"Errors
		"endif
	"endfunction
	"nnoremap <Leader>ss :call ToggleErrors()<cr>
	"nnoremap <Leader>sn :lnext<cr>
	"nnoremap <Leader>sp :lprevious<cr>
	"noremap <Leader>tg :SyntasticToggleMode<cr>
""------for syntactic end

"------for ale
	let g:ale_linters = {
	\	'python': ['mypy', 'pyls'],
	\	'zsh': ['shellcheck', 'shell']
	\}
	"\	'vim': ['vint'],
	"\	'c': ['clang'],
	"\	'c++': ['clang'],
	nnoremap <Leader>an :ALENext<cr>
	nnoremap <Leader>ai :ALEInfo<cr>
"------for ale end

"------for nerdtree
	nnoremap <leader>nt :NERDTreeToggle<CR>
	"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabFree()) | q | endif
	"auto start nerdtree when no file is opened when startup
	"autocmd StdinReadPre * let s:std_in=1
	"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"------for nerdtree end

"------for undotree
	nnoremap <leader>ut :UndotreeToggle<CR>
	nnoremap <leader>uh :UndotreeHide<CR>
	nnoremap <leader>us :UndotreeShow<CR>
"------for undotree end

"------for undotree
	nnoremap <leader>tt :TagbarToggle<CR>
"------for undotree end

"------for multicursor
	let g:multi_cursor_use_default_mapping=0
	"I want c-n and c-p to move up and down
	let g:multi_cursor_next_key='<c-m>'
	let g:multi_cursor_prev_key='<c-l>'
"------for multicursor end
	
"------for ctrlp
	let g:ctrlp_map = '<Leader>cp'
	let g:ctrlp_cmd = 'CtrlP'
"------for ctrlp end
"-------------------------------above is plugin config----------------------------


"-------------------------------below is custom config----------------------------
"ljh said:
"tagbar, vim-instant-markdown, spf13
"learn vimscript the hard way

nmap <space> \

func! CCp()
	if &filetype ==# 'c' || &filetype ==# 'cpp'
		exec 'w'
		exec '!gnome-terminal -e \"gcc % -o -g %<\"'
	endif
endfunc
func! CRun()
	if &filetype ==# 'c' || &filetype ==# 'cpp'
		exec 'w'
		exec 'gnome-terminal -e \"./%<\"'
	endif
endfunc
nmap <leader>rc :call CCp()<cr>
nmap <leader>rr :call CRun()<cr>
	
func! RRun()
	exec 'w'
	exec '!(./% > /tmp/nvimrrun.txt 2>&1 ; gnome-terminal -e \"vim /tmp/nvimrrun.txt\")&'
endfunc
func! RRunRaw()
	exec 'w'
	exec '!(./% > /tmp/nvimrrun.txt)&'
endfunc
nnoremap <f5> :call RRun()<cr>
nnoremap <f6> :call RRunRaw()<cr>
"nnoremap <f5> :!./% | cat<cr>


"for tex
nnoremap <leader>vl :set conceallevel=0<cr>


"nvim cursor shape config and terminal mode config
if has('nvim')
	tmap <c-\> <c-\><c-n>
	let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
endif
"vim cursor shape config, may be buggy
"let &t_SI = "\<Esc>[6 q"
"let &t_SR = "\<Esc>[4 q"
"let &t_EI = "\<Esc>[2 q"

nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>sp :set spell!<cr>
nnoremap <leader>ig :set ignorecase!<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mi :set mouse=i<cr>
nnoremap <leader>mm :set mouse=<cr>
nnoremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>i

"I don't used to it
"nnoremap vv V

"buggy for airline
nnoremap <leader>vr :source ~/.vimrc<cr>

"Emacs-like
inoremap <c-n> <down>
inoremap <c-p> <up>
inoremap <c-b> <left>
inoremap <c-f> <right>
inoremap <c-a> <c-o>0
inoremap <c-e> <c-o>$

"swapping between windows, quite good
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""autocmd FileType c,cpp source '~/.vim/cvim/plugin/c.vim'
""failed
""noremap <leader>sh :terminal<cr>
""noremap <leader>rc :!gcc % -o %< -lm<cr><cr>
"noremap <leader>cg :!gcc -g % -o %< -lm<cr><cr>
""noremap <leader>rr :!./%<<cr>
"noremap <leader>rt :!./%< < %<.txt<cr>

"I don't know why, but maybe I need this.
scriptencoding cp932

set conceallevel=0
set incsearch
set autoindent
set cindent
set number
set mouse=i
set scrolloff=5
"set nocompatible
set clipboard+=unnamed
set background=dark
colorscheme solarized
set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,utf-16,gbk,big5,latin1
"set showcmd
syntax on
filetype plugin indent on




