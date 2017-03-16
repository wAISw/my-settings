

" for cursor
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"set clipboard=unnamedplus
set clipboard+=unnamedplus
"set clipboard=unnamed

" not show message for not saiving file
set confirm

" Скрыть панель в gui версии
set guioptions-=T


" запретить пернос строк
set nowrap

call plug#begin('~/.vim/plugged')
" nerd tree
Plug 'scrooloose/nerdtree'

Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'Shougo/neocomplcache.vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'

" emmet
Plug 'mattn/emmet-vim'

"SNIPPETS
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" Track the engine.
" Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" angular
Plug 'burnettk/vim-angular'
Plug 'othree/javascript-libraries-syntax.vim'
" local history
Plug 'sjl/gundo.vim'

" Buffer line
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'

" buffer explorer
Plug 'bufexplorer.zip'

" typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jelera/vim-javascript-syntax'

Plug 'maksimr/vim-jsbeautify'

Plug 'scrooloose/nerdcommenter'



" Add Plugs to &runtimepath
call plug#end()

filetype on
filetype plugin on
filetype plugin indent on

" css3
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END


" EMMET SETTINGS
" let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"Redefine trigger key
" let g:user_emmet_leader_key='<C-Z>'


" NERDTREE
" NERDTree
" Открывать дерево по нажаить Ctrl+n
map <c-n> :NERDTreeToggle<cr>
" Немного магии, если мы запустим Vim без указания файла для редактирования,
" то дерево будет открыто, а если будет указан файл, то дерево
" открыто не будет
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='luna'


" numbers lines
set nu

" Enable syntax highlighting.
syntax on
" set background=dark
"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=light " or dark
colorscheme solarized
"
"colorscheme solarized
" colorscheme desert

" Включить автоотступы
set autoindent

" Размер отступов
set shiftwidth=2

" Размеры табуляций
set tabstop=2
set softtabstop=2

" Более "умные" отступы при вставке их с помощью tab. 
" На самом деле заметить влияние этой опции тяжело, но хуже из-за нее не будет :)
set smarttab
set expandtab

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Включаем фолдинг (сворачивание участков кода)
"set foldenable
" Сворачивание по синтаксису
set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/

" Ctrl-пробел для автодополнения
inoremap <C-space> <C-x><C-o>


" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" Show line number, cursor position.
set ruler

" Display incomplete commands.
set showcmd

" Search as you type.
set incsearch
set hlsearch

" Ignore case when searching.
set ignorecase

" Show autocomplete menus.
set wildmenu

" Show editing mode
set showmode

" Error bells are displayed visually.
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


"
"
"
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><Enter>  pumvisible() ? "\<C-n>" : "\<Enter>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"
"
"

" установить спец-символы
set listchars=tab:\|\ ,extends:>,precedes:<,trail:·
"set listchars=tab:>>,trail:·,space:.
" установить режим отображения спец-символов
set list
" show custom spaces
let g:indent_guides_auto_colors = 1
hi IndentGuidesOdd  ctermbg=grey
hi IndentGuidesEven ctermbg=lightgrey
"
" Let's save undo info!
set undodir=~/.vim/undo
set undofile

" JAVASCRIPT-LIBRARIES-SYNTAX
let g:used_javascript_libs = 'jquery, jasmine, angularui, angularjs'
"
"indent
autocmd VimEnter * :IndentGuidesEnable

" $log.info
" inoremap <C-S-L> :@L<CR>
nmap <C-S-L> @a<CR>
imap <C-S-L> <Esc>@a<CR>
" print_r
nmap <C-\.> @b<CR>
imap <C-\.> <Esc>@b<CR>

" Переключение табов (вкладок) с помощью SHIFT+TAB и CTRL+TAB
map <C-S-TAB> :tabprevious<CR>
nmap <C-S-TAB> :tabprevious<CR>
imap <C-S-TAB> <Esc>:tabprevious<CR>i
map <C-TAB> :tabnext<CR>
nmap <C-TAB> :tabnext<CR>
imap <C-TAB> <Esc>:tabnext<CR>i

" Открытие\закрытие новой вкладки по CTRL+T и CTRL+W
"nmap <C-S-t> :tabnew<CR>
"imap <C-S-t> <Esc>:tabnew<CR>a
"nmap <C-S-w> :tabclose<CR>
"imap <C-S-w> <Esc>:tabclose<CR>
"
"
".jsbeautify
map <c-l> :call JsBeautify()<cr>

set backspace=indent,eol,start
" or
autocmd FileType javascript noremap <buffer>  <c-l> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-l> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-l> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-l> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-l> :call CSSBeautify()<cr>

set backspace=indent,eol,start


" remove files
set modifiable

" reindent
map <F7> mzgg=G`z

" орфография
setlocal spell spelllang=ru,en

nmap <F8> :set spell!<CR>
imap <F8> <Esc>:set spell!<CR>
vmap <F8> <Esc>:set spell!<CR>

highlight clear SpellBad
highlight SpellBad ctermfg=Red

highlight clear SpellCap
highlight SpellCap ctermfg=Blue

highlight clear SpellLocal
highlight SpellLocal ctermfg=Green



