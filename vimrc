"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"encoding
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
let &termencoding=&encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set t_Co=256


"leader
let mapleader = ","
let g:mapleader = ","

"history max records
set history=100

"confirm exit
set confirm

"share clipboard with windows
set clipboard+=unnamed

" save global
set viminfo+=!

"dont new line
set iskeyword+=_,$,@,%,#,-

"show line number
set nu

"height light
syntax enable
syntax on

"themes
colorscheme onedark

"dont make swp file
setlocal noswapfile
set bufhidden=hide

set linespace=0

set wildmenu

set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

set cmdheight=1

set backspace=2

set shortmess=atI

set report=0

set noerrorbells

set fillchars=vert:\ ,stl:\ ,stlnc:\

set showmatch

set matchtime=7

set ignorecase smartcase

set nohlsearch

set incsearch

set scrolloff=3

set novisualbell

set laststatus=2

set formatoptions=tcrqn

set autoindent

set smartindent

set nowrap

set smarttab

set cindent

set tabstop=4

set softtabstop=4
set shiftwidth=4

set noexpandtab

"code fold
set foldmethod=manual
let php_folding = 0

"php indent
au FileType php setl shiftwidth=4
au FileType php setl tabstop=4
au FileType php setl expandtab

"html,python,vim,js indent
au FileType html,python,vim,javascript,tpl,jade setl shiftwidth=2
au FileType html,python,vim,javascript,tpl,jade setl tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" my mapping
nnoremap <space> i<space><esc>l
inoremap  == <space>==<space>
inoremap  != <space>!=<space>
inoremap  !== <space>!==<space>
inoremap  >= <space>>=<space>
inoremap  <= <space><=<space>
au FileType php inoremap  , ,<space>
inoremap <C-o> <C-x><C-o>
inoremap jj <esc>
nnoremap <C-l> :bn<Cr>
nnoremap <C-h> :bp<Cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#buffline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline_theme = 'behelit' 
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"let g:airline_symbols='fancy'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tagbar
nnoremap <silent> <F3> :TagbarToggle <CR>
let g:tagbar_width = 22
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DERDTree
let NERDTreeShowBookmarks=1
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeShowFile=1
let NERDTreeWinSize=20
let NERDTreeDirArrows=0
nnoremap <silent> <F2> :NERDTreeToggle <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"emmet
let g:user_emmet_leader_key = '<c-e>'
"let	g:user_emmet_expandabbr_key = '<TAB>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
\  'lang' : 'en',
\  'html' : {
\    'filters' : 'html',
\    'indentation' : ' '
\  },
\  'perl' : {
\    'indentation' : '  ',
\    'aliases' : {
\      'req' : "require '|'"
\    },
\    'snippets' : {
\      'use' : "use strict\nuse warnings\n\n",
\      'w' : "warn \"${cursor}\";",
\    },
\  },
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'html,c',
\  },
\  'tpl' : {
\    'extends' : 'html',
\    'filters' : 'html,c',
\  },
\  'css' : {
\    'filters' : 'fc',
\  },
\  'javascript' : {
\    'snippets' : {
\      'jq' : "$(function() {\n\t${cursor}${child}\n});",
\      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n});",
\      'fn' : "(function() {\n\t${cursor}\n})();",
\      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
\    },
\  },
\ 'java' : {
\  'indentation' : '    ',
\  'snippets' : {
\   'main': "public static void main(String[] args) {\n\t|\n}",
\   'println': "System.out.println(\"|\");",
\   'class': "public class | {\n}\n",
\  },
\ },
\}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=Zend"
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "〆"
let g:syntastic_style_warning_symbol = "❈"
let g:syntastic_auto_loc_list = 2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CtrlP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
map <leader>b :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
	\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
	\ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType go setlocal omnifunc=gocomplete#Complete
autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"phpcomplete
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gitv mapping
nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ack
nnoremap <Leader>a :Ack!<Space>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"phpactor
autocmd FileType php setlocal omnifunc=phpactor#Complete
autocmd FileType php map <c-]> :call phpactor#GotoDefinition()<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle manager
set nocompatible          " be iMproved
filetype off              " required!
filetype plugin indent on " required!
set rtp+=~/.phpvim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""
"plugin list:
""""""""""""""""""""""""""""""""""""""""
Plugin 'joshdick/onedark.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bash-support.vim'
Plugin 'colorizer'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'othree/html5.vim'
Plugin 'jQuery'
Plugin 'jsbeautify'
Plugin 'indentLine.vim'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'jshint.vim'
Plugin 'Tagbar'
Plugin 'The-NERD-tree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'The-NERD-Commenter'
Plugin 'VimIM'
Plugin 'ZoomWin'
Plugin 'moll/vim-node'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
" Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'phpactor/phpactor'
