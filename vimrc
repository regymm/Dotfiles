"------vim-plug begin
call plug#begin('~/.vim/bundle')
    "Plug 'gmarik/vundle'  
    "Plug 'L9'  
    "may be some problem
    Plug 'tpope/vim-fugitive'  
    "Plug 'Lokaltog/vim-easymotion'  
    "Plug 'rstacruz/sparkup', {'rtp': 'vim/'}  
    "Plug 'tpope/vim-rails.git.git'  
    "this doesn't work
    "Plug 'git://git.wincent.com/command-t.git'  
    " I don't know what they are...(above this comment)
    "Plug 'bash-support.vim' 
    "may be some problem
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/syntastic'
    "Plug 'terryma/vim-expand-region'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'terryma/vim-smooth-scroll'
    Plug 'lilydjwg/fcitx.vim'
    Plug 'Yggdroot/indentLine'
    Plug '~/.fzf'
call plug#end()
"------vim-plug end

set showcmd
set incsearch
set autoindent
set cindent
set number
set mouse=i
set scrolloff=5
set nocompatible
set clipboard+=unnamed
set background=dark
"set cursorline
set fileencodings=ucs-bom,gb18030,utf-8,utf-16,gbk,big5,latin1
filetype plugin indent on
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>sp :set spell!<cr>
nnoremap <leader>ig :set ignorecase!<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mi :set mouse=i<cr>
nnoremap <leader>mm :set mouse=<cr>

inoremap <c-n> <down>
inoremap <c-p> <up>
inoremap <c-b> <left>
inoremap <c-f> <right>
inoremap <c-a> <c-o>0
inoremap <c-e> <c-o>$

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"autocmd FileType c,cpp source '~/.vim/cvim/plugin/c.vim'
"failed
noremap <leader>sh :terminal<cr>
"noremap <leader>rc :!gcc % -o %< -lm<cr><cr>
noremap <leader>cg :!gcc -g % -o %< -lm<cr><cr>
"noremap <leader>rr :!./%<<cr>
noremap <leader>rt :!./%< < %<.txt<cr>

"------for airline
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"strange symbols, isn't it?
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
let g:syntastic_c_checkers = [ 'gcc' ]
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"------for syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
function! ToggleErrors()
	let old_last_winnr = winnr('$')
		lclose
		if old_last_winnr == winnr('$')
		" Nothing was closed, open syntastic error location panel
			Errors
	endif
endfunction
nnoremap <Leader>ss :call ToggleErrors()<cr>
"nnoremap <Leader>sn :lnext<cr>
"nnoremap <Leader>sp :lprevious<cr>
"------for syntactic end

"------for nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabFree()) | q | endif
"------for nerdtree end
"------for multicursor
"let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<c-m>'
let g:multi_cursor_prev_key='<c-l>'
"------for multicursor end
set showcmd

