"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设定默认解码和字体
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
let &termencoding=&encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set t_Co=256


let mapleader = ","
let g:mapleader = ","

"history文件中需要记录的行数
set history=100

"在处理未保存或只读文件的时候，弹出确认
set confirm

"与windows共享剪贴板
set clipboard+=unnamed

"保存全局变量
set viminfo+=!

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"显示行号
set nu

"语法高亮
syntax enable
syntax on

"配色方案
colorscheme github

"不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

"字符间插入的像素行数目
set linespace=0

"增强模式中的命令行自动完成操作
set wildmenu

"在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"命令行（在状态行下）的高度，默认为1
set cmdheight=1

"使回格键（backspace）正常处理indent, eol, start等
set backspace=2

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

"不让vim发出滴滴声
set noerrorbells

"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"高亮显示匹配的括号
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=7

"在搜索的时候更智能
set ignorecase smartcase

"不要高亮被搜索的句子（phrases）
set nohlsearch

"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"不要闪烁
set novisualbell

"总是显示状态行
set laststatus=2

"自动格式化
set formatoptions=tcrqn

"继承前一行的缩进方式，特别适用于多行注释
set autoindent

"为程序提供自动缩进
set smartindent

"不要换行
set nowrap

"在行和段开始处使用制表符
set smarttab

"使用C样式的缩进
set cindent

"制表符为4
set tabstop=4

"统一缩进为4
set softtabstop=4
set shiftwidth=4

"用空格代替制表符
set noexpandtab

"代码折叠
set foldmethod=manual
let php_folding = 1

"java,php缩进格式
au FileType php setl shiftwidth=4
au FileType php setl tabstop=4
au FileType php setl expandtab

"html,python,vim,js缩进格式
au FileType html,python,vim,javascript,tpl,jade setl shiftwidth=2
au FileType html,python,vim,javascript,tpl,jade setl tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自己定义的映射
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
"修复ALT键映射
"for UseAlt in range (65 , 90 ) + range ( 97 , 122)
	"exe "set <M-" .nr2char(UseAlt).">=\<Esc>" .nr2char (UseAlt)
"endfor
"nnoremap <M-l> :bn<Cr>
"nnoremap <M-h> :bp<Cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"airline配置
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#buffline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline_theme = 'behelit' 
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
"let g:airline_symbols='fancy'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tagbar
nnoremap <silent> <Leader>tt :TagbarToggle <CR>
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
nnoremap <silent> <leader>dd :NERDTreeToggle <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"emmet

"设置引导键
let g:user_emmet_leader_key = '<c-e>'

"可以用<TAB>展开
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
"vim phpdoc  PHP手册
autocmd BufNewFile,Bufread *.ros,*.inc,*.phtml,*.php set keywordprg=:help
set runtimepath+=$HOME/.vim/phpdoc
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
highlight SyntasticErrorSign guifg=white guibg=red
highlight SyntasticWarningSign guifg=white guibg=red
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VimIM输入法
let g:vimim_cloud = 'sogou'
let g:vimim_toggle = 'pinyin,sogou'
"let g:vimim_cloud = 'sogou,baidu,qq,google'
"let g:vimim_mode = 'dynamic'
"let g:vimim_mycloud = 0
"let g:vimim_punctuation = 2
"let g:vimim_shuangpin = 0
"let g:vimim_toggle = 'pinyin,google,sogou'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CtrlP设置
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
"Go语言配置
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

autocmd BufWritePre *.go :Fmt
let g:go_snippet_engine = "neosnippet"
let g:go_fmt_command = "goimports"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete配置
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
"phpcomplete配置
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gitv配置
nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"unite配置
"nnoremap <Leader>f :Unite -start-insert file<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ack配置
nnoremap <Leader>a :Ack!<Space>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"phpactor配置
autocmd FileType php setlocal omnifunc=phpactor#Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle管理插件
set nocompatible          " be iMproved
filetype off              " required!
filetype plugin indent on " required!
set rtp+=~/.phpvim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""
"插件列表:
""""""""""""""""""""""""""""""""""""""""
"vim配色
Plugin 'croaky/vim-colors-github'
Plugin 'NLKNguyen/papercolor-theme'

"文本搜索
Plugin 'mileszs/ack.vim'

"自动更新tag文件
" Plugin 'AutoTag'

"和c-support差不多。编辑shell脚本
Plugin 'bash-support.vim'

"显示十六进制颜色
Plugin 'colorizer'

"代码补全用到的tags
Plugin 'ctags.vim'

"文件查找工具
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

"HTML5不全语和法高亮
Plugin 'othree/html5.vim'

"jquery的语法插件
Plugin 'jQuery'

"优化js代码，并不是简单的缩进，而是整个优化
Plugin 'jsbeautify'

"垂直对齐线
Plugin 'indentLine.vim'

"用于快速切换括号/引号或者标签
Plugin 'tpope/vim-surround'

"html标签起始跳转
Plugin 'matchit.zip'

"用于补全括号和引号
Plugin 'Raimondi/delimitMate'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"快速生成代码段
Plugin 'mattn/emmet-vim'

"语法检测
Plugin 'scrooloose/syntastic'
Plugin 'jshint.vim'

"显示代码中的类，方法，和变量列表
Plugin 'Tagbar'

"提供展示文件/目录列表的功能
Plugin 'The-NERD-tree'

"代码注释
Plugin 'The-NERD-Commenter'

"vim拼音输入法
Plugin 'VimIM'

"窗口最大化
Plugin 'ZoomWin'

"nodejs插件
Plugin 'moll/vim-node'
Plugin 'myhere/vim-nodejs-complete'

"git插件
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

"Go语言插件
" Plugin 'fatih/vim-go'

"代码补全
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'phpactor/phpactor'
