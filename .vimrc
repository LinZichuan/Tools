"set fileencodings=gb18030
",ucs-bom,utf-8,cp936,,big5,euc-jp,euc-kr,latin1
"filetype plugin indent on
"let fortran_fold=1
"
"syntax on
"
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"
"set autoindent
"set cindent
"set nu
"set incsearch
"set hlsearch
"
"set laststatus=2 
"set ignorecase
"highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "g")
"    return curdir
"endfunction
"
"set bg=dark
""set fdm=marker
"
""let Tlist_Auto_Open=1
"let Tlist_Exit_OnlyWindow=1
"
"nmap tl :TlistToggle<CR>
""nmap ne :NERDTree<CR>
"
"set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
"
"map <F4> ms:call AddAuthor()<cr>'s
""au BufWrite *.cpp call AddAuthor()
""au BufWrite *.h call AddAuthor()
"
"function AddAuthor()
"	let n=1
"	while n < 6
"		let line = getline(n)
"		if line =~'^\s*\*\s*\S*Last\s*modified\s*:\s*\S*.*$'
"			call UpdateTitle()
"			return
"		endif
"		let n = n + 1
"	endwhile
"	call AddTitle()
"endfunction
"
"function UpdateTitle()
"	normal m'
"	execute '/* Last modified\s*:/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
"	normal "
"	normal mk
"	execute '/* Filename\s*:/s@:.*$@\=": ".expand("%:t")@'
"	execute "noh"
"	normal 'k
"	echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
"endfunction
"
"function AddTitle()
"	call append(0,"/**********************************************************")
"	call append(1," * Author        : xuszh2008")
"	call append(2," * Email         : xuszh2008@163.com")
"	call append(3," * Created       : ".strftime("%Y-%m-%d %H:%M"))
"	call append(4," * Last modified : ".strftime("%Y-%m-%d %H:%M"))
"	call append(5," * Filename      : ".expand("%:t"))
"	call append(6," * Description   : This file is for EarthShaker project")
"	call append(7," * *******************************************************/")
"	call append(8,"")
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endfunction
"
"set nocscopeverbose
"cscope add /home/rose_test/mint-test/copyFirst/cscope.out /home/rose_test/mint-test/copyFirst
"set tags=/home/rose_test/CudaDMA/CudaDMA/tags

"set tags+=/home/rose_test/Downloads/rose/src/tags
"set tags+=/home/rose_test/Downloads/compileTree/src/frontend/SageIII/tags

"now we set nb configuration
let mapleader=";"

filetype on
filetype plugin on
nmap <Leader>b 0
nmap <Leader>e $


""设置快捷键将选中文本块复制至系统剪贴板
"vnoremap <Leader>y "+y
""设置快捷键将系统剪贴板内容粘贴至 vim
"nmap <Leader>p "+p
"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR> 

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

set background=dark 
"colorscheme solarized
"colorscheme molokai
"colorscheme phd 
"colorscheme desert256
"colorscheme BusyBee
colorscheme colorful256
"colorscheme ansi_blows
"colorscheme asmanian2
"colorscheme 256-jungle

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 设置一行放不下时换行
set wrap
" *.cpp 和 *.h 间切换
nmap <Leader>h :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sh :AS<CR>

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
"只能是 #include 或已打开的文件
nnoremap <leader>je :YcmCompleter GoToDefinition<CR>
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
" 使用 ctrlsf.vim
" 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in
" project
nnoremap <Leader>sp :CtrlSF<CR>

let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 自动删除对应的tree文件
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
imap <C-f> <C-x><C-o>
imap <F2> <C-x><C-o>
imap <C-j> <C-n>
imap <C-k> <C-p>

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
nmap <C-k> :MBEbn<cr>
nmap <C-j> :MBEbp<cr>
nmap <Leader>d :bdelete
set csprg=./cscope.sh

""add by lzc
map <C-n> :NERDTreeToggle<CR>
set mouse=a
set ttymouse=xterm2
