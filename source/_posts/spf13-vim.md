---
title: spf13-vim
date: 2016-07-02 11:24:00
tags:
    - spf13
    - vim
---

# [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

- press: `<C-e>`
- press: `?`

# [tpope/vim-surround](https://github.com/tpope/vim-surround)

- **word**: `"Hello |world!"`
- *press*: `cs"'`
- **now**: `'Hello |world!'`
- *press*: `cs'<q>`
- **now**: `<q>Hello |world!</q>`
- *press*: `cst"`
- **now**: `"Hello world!"`
- *press*: `ds"`
- **now**: `He|llo world!`
- *press*: `ysiw]` (`iw` 为文本对象)
- **now**: `[He|llo] world!`
- *press*: `cs]{`
- **now**: `{ He|llo  } world!`
- *press*: `yssb` or `yss)` (第二个 `s` 为文本对象)
- **now**: `({ He|llo  } world!)`
- *press*: `ds{ds)`
- **now**: `He|llo world!`
- *press*: `ysiw<em>`
- **now**: `<em>He|llo</em> world!`
- *press*: `VS<p class="important">` (在 visual 模式下)
- **now**:

```html
<p class="important">
  <em>Hello</em> world!
</p>
```

**NOTICE: ** `|` 是当前鼠标所在位置

# [rhysd/conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim)

- 目前并不经常用，参考官方文档

# [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)

- 开启 Fly Mode: `let g:AutoPairsFlyMode = 1`

# [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)

- press: `<C-p>` 进入 CtrlP 搜索文件模式
- press: `<F5>` 刷新
- press: `<C-f>` or `<C-b>` 结果列表中按屏滚动
- press: `<C-d>` 全路径搜索与文件名搜索之间切换
- press: `<C-r>` 切换为正则搜索模式
- press: `<C-j>`, `<C-k>` ctrlP 结果窗口上下移动
- press: `<C-t>`, `<C-v>`, `<C-x>` 选中的文件以新 tab 还是分屏打开
- press: `<C-n>`, `<C-p>` 上下翻滚搜索历史
- press: `<C-y>` 在 ctrlP 窗口中输入名字后创建文件
- press: `<C-z>` 标记多个文件后, 使用 `<C-z>` 打开
- `let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'`: 设置 ctrlP 窗口, 底端显示, 输出结果自上而下显示, 最小一行，最大 10 行，默认展示 10 条结果
- `let g:ctrlp_working_path_mode = 'ra'`: 设置 ctrlP 工作目录模式
- `let g:ctrlp_use_caching = 1`: 是否使用缓存
- `let g:ctrlp_max_files = 0`: 最大搜索文件, 0 无限大
- `let g:ctrlp_open_new_file = 't'`: 使用 `<C-y>` 创建新文件后，文件的打开形式，分屏 or new tab

# [tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)

- `let g:ctrlp_funky_syntax_highlight = 1`: 语法高亮, todo: not work

# [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

- press: `<C-n>`: 选择多个块，然后使用 a,i,I,A 进行块操作

# [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)

- press: `<Leader><Leader>w`: 跳转到单词
- press: `<Leader><Leader>f[o]`: 跳转到字符o (忽略其中的 [])

# [jeetsukumaran/vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)

- press: `<Leader>b`: 打开 buffer 列表, 然后在列表中操作 buffer, 类似 nerdTree

# [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)

- `let g:nerdtree_tabs_open_on_console_startup = 1`: 打开 vim 时打开 nerdtree

# [mbbill/undotree](https://github.com/mbbill/undotree)

- press: `<Leader>u`: 打开 undo list

# [scrooloose/syntastic](https://github.com/scrooloose/syntastic)

- php: 将 php 可执行文件目录加入 PATH 环境变量
- 参考官方文档: `:help syntastic-checkers`

# [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)

- press: `<Leader>c<Space>`: 改变注释状态
- 其他参考文档

# [arnaud-lb/vim-php-namespace](https://github.com/arnaud-lb/vim-php-namespace)

- 依赖 ctags
- 添加

```vim
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
```

- 使用 `<Leader>u` 自动添加 use 语句，使用 `<Leader>e` 校验 class

# 其他按键映射

```vim
" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

nmap <Leader>ac <Plug>ToggleAutoCloseMappings

" NerdTree
map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>       
nmap <leader>nt :NERDTreeFind<CR>

" Tabularize
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

" session manager
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

"funky
nnoremap <Leader>fu :CtrlPFunky<Cr>

" Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>

" UndoTree
nnoremap <Leader>u :UndotreeToggle<CR> 

nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
```



NOTE: press `:help key-notation` 查看各种控制键如何在 vimrc 中表示
