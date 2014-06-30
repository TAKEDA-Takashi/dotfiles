"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
"call neobundle#begin(expand($HOME . '/.vim/bundle'))
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'leshill/vim-json'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'thinca/vim-quickrun'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


" Text Config
set autoindent
set smartindent
set number
set whichwrap=b,s,h,l,<,>,[,]
set hlsearch
set tabstop=4 shiftwidth=4
set cursorline
set incsearch
set backspace=indent,eol,start
set wildmenu
set virtualedit+=block
set list
set listchars=tab:^\ ,
set laststatus=2
set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}][ENC=%{&fileencoding}][POS=%03l,%03v][-%03p%%-\ %03LL]
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <leader>p :setlocal paste! paste?<cr>


" AutoCmd
au BufNewFile,BufRead *.json    set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.scala   set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.html    set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.css     set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.js      set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.coffee  set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.jade    set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.styl    set tabstop=2 shiftwidth=2 expandtab


" quickrun
let g:quickrun_config = {}
let g:quickrun_config['coffee'] = {'command': 'coffee', 'cmdopt': '-cbp', 'exec': ['%c %o %s']}
let g:quickrun_config['jade'] = {'command': 'jade', 'cmdopt': '-P', 'exec': ['%c %o < %s']}
let g:quickrun_config['stylus'] = {'command': 'stylus', 'exec': ['%c < %s']}

