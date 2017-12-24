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
    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdcommenter'
    Plug 'terryma/vim-expand-region'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'lilydjwg/fcitx.vim'
    Plug 'Yggdroot/indentLine'
call plug#end()
"------vim-plug end

set showcmd
set incsearch
set nohlsearch
set autoindent
set cindent
set number
set mouse=i
set scrolloff=5
set nocompatible
set clipboard+=unnamed
set background=dark
"set cursorline
filetype plugin indent on
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>sp :set spell!<cr>

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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"strange symbols, isn't it?
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
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
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>
"------for syntactic end

"------for nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabFree()) | q | endif
"------for nerdtree end
set showcmd

