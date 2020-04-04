" File              : .vimrc
" License           : GPL-3.0-or-later
" Author            : Yimin Gu <github.com/ustcpetergu>
" Date              : 2019.10.17
" Last Modified Date: 2019.10.17
"
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
filetype on
filetype detect
call plug#begin('~/.vim/bundle')
	Plug 'rhysd/vim-llvm'
	"Plug 'shougo/vimproc.vim'
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
	"Plug 'Valloric/YouCompleteMe'
	"Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/nerdcommenter'
	"Plug 'terryma/vim-multiple-cursors'
	"Plug 'terryma/vim-expand-region'
	"Plug 'terryma/vim-smooth-scroll'
	"Plug 'lilydjwg/fcitx.vim'
	Plug 'Yggdroot/indentLine'
	"Plug 'vim-latex/vim-latex'
	"Plug 'donRaphaco/neotex', { 'for': 'tex' }
	"Plug 'suan/vim-instant-markdown'
	Plug 'vim-scripts/tagbar'
	Plug 'w0rp/ale'
	"Plug '~/.fzf'
	"Plug 'ctrlpvim/ctrlp.vim'
	"Plug 'myusuf3/numbers.vim'
	Plug 'mbbill/undotree'
	Plug 'altercation/vim-colors-solarized'
	"Plug 'WolfgangMehner/c-support'
	Plug 'alpertuna/vim-header'
	Plug 'pseewald/vim-anyfold'
	Plug 'Shirk/vim-gas'
	Plug 'harenome/vim-mipssyntax'
	"if (&filetype=='cpp' || &filetype=='c')
	if (&filetype=='c')
		" Intellisense for vim
		" Use release branch
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		let has_coc = 1
		"echo "C/CPP"
	else
		"Plug 'zxqfl/tabnine-vim'
		if has('nvim')
			Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		else
			Plug 'Shougo/deoplete.nvim'
			Plug 'roxma/nvim-yarp'
			Plug 'roxma/vim-hug-neovim-rpc'
		endif
		Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
		"echo "others"
	endif
call plug#end()
"------vim-plug end
 
"------for deoplete
	let g:deoplete#enable_at_startup = 1
"------for deoplete end


"------for airline
	"if !exists('g:airline_symbols')
	"let g:airline_symbols = {}
	"endif
	"let g:airline#extensions#syntastic#enabled = 1
	let g:airline#extensions#tagbar#enabled = 1
	"let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_idx_mode = 1
	let g:airline#extensions#ale#enabled = 1
	"let &t_Co=256
	let g:airline_theme='papercolor'
	"let g:airline_theme='solarized'
	"let g:airline_solarized_bg='dark'
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
"------for vim-header
let g:header_auto_add_header = 0
let g:header_field_modified_by = 0
let g:header_field_author = 'Yimin Gu'
let g:header_field_author_email = 'github.com/ustcpetergu'
let g:header_field_modified_by = 0
let g:header_field_timestamp_format = '%Y.%m.%d'
let g:header_field_license_id = 'GPL-3.0-or-later'
map <F4> :AddHeader<CR>
"------for vim-header end

"------for YCM
	let g:ycm_show_diagnostics_ui = 0
	let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
	"let g:syntastic_c_checkers = [ 'gcc' ]
"------for YCM end
""------for syntactic
	"set statusline+=%#warningmsg#
	"set statusline+=%{SyntasticStatuslineFlag()}
	"set statusline+=%*

	"let g:syntastic_always_populate_loc_list = 0
	"let g:syntastic_auto_loc_list = 0
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
	let g:ale_sign_column_always = 1
	let g:ale_linters = {
	\	'python': ['mypy', 'pyls'],
	\	'zsh': ['shellcheck', 'shell'],
	\	'c': ['clang'],
	\	'cpp': ['clang']
	\}
	"\	'vim': ['vint'],
	"\	'c': ['clang'],
	"\	'c++': ['clang'],
	nnoremap <Leader>an :ALENext<cr>
	nnoremap <Leader>ai :ALEInfo<cr>
	let g:ale_c_clang_options = ""
	let g:ale_cpp_clang_options = "-I/run/media/petergu/8891ca7c-3585-4e2f-a13f-61d83f8c00f7/petergu/llvm-install/include -I/usr/include/opencv4"
	let g:ale_c_parse_compile_commands = 1
	let g:ale_cpp_parse_compile_commands = 1
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

""------for multicursor
	"let g:multi_cursor_use_default_mapping=0
	""I want c-n and c-p to move up and down
	"let g:multi_cursor_next_key='<c-m>'
	"let g:multi_cursor_prev_key='<c-l>'
""------for multicursor end
	
""------for ctrlp
	"let g:ctrlp_map = '<Leader>cp'
	"let g:ctrlp_cmd = 'CtrlP'
""------for ctrlp end
"-------------------------------above is plugin config----------------------------


"-------------------------------below is custom config----------------------------
"ljh said:
"tagbar, vim-instant-markdown, spf13
"learn vimscript the hard way

nmap <space> \

""""""""""""""
"My plugin: nethack like 8 direction movement
"func! NH8()
	"nmap b hj
	"nmap n lj
	"nmap yy hkhk
	"nmap u lk
"endfunction

"func! NoNH8()
	"nunmap b
	"nunmap n
	"nunmap y 
	"nunmap u
"endfunction


"func! CCp()
	"if &filetype ==# 'c' || &filetype ==# 'cpp'
		"exec 'w'
		"exec '!gnome-terminal -e \"gcc % -o -g %<\"'
	"endif
"endfunc
"func! CRun()
	"if &filetype ==# 'c' || &filetype ==# 'cpp'
		"exec 'w'
		"exec 'gnome-terminal -e \"./%<\"'
	"endif
"endfunc
"nmap <leader>rc :call CCp()<cr>
"nmap <leader>rr :call CRun()<cr>
	
"func! RRun()
	"exec 'w'
	"exec '!(./% > /tmp/nvimrrun.txt 2>&1 ; gnome-terminal -e \"vim /tmp/nvimrrun.txt\")&'
"endfunc
"func! RRunRaw()
	"exec 'w'
	"exec '!(./% > /tmp/nvimrrun.txt)&'
"endfunc
"nnoremap <f5> :call RRun()<cr>
"nnoremap <f6> :call RRunRaw()<cr>
""nnoremap <f5> :!./% | cat<cr>


"for tex
nnoremap <leader>vl :set conceallevel=0<cr>

""Binary editing
"func! ToBin()
	"exec '%!xxd'
"endfunc
"func! RevToBin()
	"exec '%!xxd -r'
"endfunc
"command Bin call ToBin()
"command Rbin call RevToBin()

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

autocmd Filetype * AnyFoldActivate
set foldmethod=indent
set foldnestmax=10
"set nofoldenable
set foldlevel=99
"set conceallevel=0
set ignorecase
set incsearch
set autoindent
set cindent
set number
"set mouse=n
set scrolloff=5
"set nocompatible
set clipboard+=unnamed
set background=dark
colorscheme solarized
"set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,utf-16,gbk,big5,latin1
"set showcmd
syntax on
filetype plugin indent on
"set guifont=Consolas:h14
set encoding=utf-8

if exists("has_coc")
" for coc
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" I want to use c-d for scrolling
"" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
endif
