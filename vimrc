"------vundle begin
    set nocompatible              " be iMproved  
    filetype off                  " required!  
      
    set rtp+=~/.vim/bundle/vundle/  
    call vundle#rc()  
      
    " let Vundle manage Vundle  
    " required!   
    Bundle 'gmarik/vundle'  
      
    " 可以通过以下四种方式指定插件的来源  
    " a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
    Bundle 'L9'  
      
    " b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
    Bundle 'tpope/vim-fugitive'  
    Bundle 'Lokaltog/vim-easymotion'  
    Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
    Bundle 'tpope/vim-rails.git'  
    " c) 指定非Github的Git仓库的插件，需要使用git地址  
    Bundle 'git://git.wincent.com/command-t.git'  
    " I don't know what they are...
    Bundle 'bash-support.vim' 
    Bundle 'scrooloose/syntastic'
    Bundle 'scrooloose/nerdtree'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'vim-airline/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    "Bundle 'Raimondi/delimitMate'
    "Bundle 'luochen1990/rainbow'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-repeat'
    Bundle 'Shougo/vimshell.vim'
    Bundle 'Shougo/vimproc.vim', {'do' : 'make'}
    Bundle 'jiangmiao/auto-pairs'
    filetype plugin indent on     " required!  
"------vundle end

set showcmd
set incsearch
set nohlsearch
set autoindent
set cindent
set number
set mouse=i
set scrolloff=6
filetype plugin on
filetype plugin indent on
filetype on

noremap <leader>sh :VimShellInteractive bash<cr>

"------for airline
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
"a strange symbol, isn't it?
let g:airline#extensions#tabline#left_alt_sep = ''
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


"------for syntactic
function! ToggleErrors()
	let old_last_winnr = winnr('$')
		lclose
		if old_last_winnr == winnr('$')
		" Nothing was closed, open syntastic error location panel
			Errors
	endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
"nnoremap <Leader>sn :lnext<cr>
"nnoremap <Leader>sp :lprevious<cr>
"------for syntactic end

"------for nerdtree
map <leader>n :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabFree()) | q | endif
"------for nerdtree end

"------for rainbow
let g:rainbow_active = 0
"------for rainbow end

