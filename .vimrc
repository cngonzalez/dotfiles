set nocompatible
set encoding=utf-8
" let &t_8f="\e[38;2;%ld;%ld;%ldm"
" let &t_8b="\e[48;2;%ld;%ld;%ldm"
" execute "set t_8f=\e[38;2;%lu;%lu;%lum"
" execute "set t_8b=\e[48;2;%lu;%lu;%lum"
" be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')

if $TERM == "xterm-256color"
    set t_Co=256
endif

if $TERM == "screen"
    set t_Co=256
endif

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
" Remaps navigational keys (ctrl-h et al) to go between tmux panels instead.
Plugin 'christoomey/vim-tmux-navigator'

" Supposedly allows execution of code in a separate tmux pane, doesn't seem to
" work.
Plugin 'vimux'

" File tree
Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" customize interface
" Bundle 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'edkolev/promptline.vim'
Plugin 'airblade/vim-gitgutter'

" better vim controls
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab'
Plugin 'alvan/vim-closetag'

" formatting code files
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
"Plugin 'mattn/emmet-vim'
"
" Plugin 'tpope/vim-fugitive'
"
" js/ts/jsx/tsx tooling
" Plugin 'HerringtonDarkholme/yats.vim'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'leafgarland/typescript-vim' " TypeScript syntax
" Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
" Plugin 'sheerun/vim-polyglot'
" Plugin 'mxw/vim-jsx'
Plugin 'dense-analysis/ale'
Plugin 'github/copilot.vim'


"Plugin 'vim-scripts/Conque-Shell'
" Plugin 'vim-scripts/AutoComplPop'
"
" other lang / tooling specific stuff for things i don't code in anymore
" Plugin 'valloric/youcompleteme'
"Bundle 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-rails'
"Plugin 'roosta/srcery'
" Plugin 'cngonzalez/vim-ipython'
" Plugin 'sheerun/vim-polyglot'
" Plugin 'posva/vim-vue'

" i need to get better at ctags generally
Plugin 'majutsushi/tagbar'

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

Plugin 'ap/vim-css-color'
" Plugin 'epilande/vim-react-snippets'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" All of your Plugins must be added before the following line
call vundle#end()      " required
filetype plugin indent on  " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList   - lists configured plugins
" :PluginInstall  - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean    - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd    " Show (partial) command in status line.
"set showmatch    " Show matching brackets.
"set ignorecase   " Do case insensitive matching
"set smartcase    " Do smart case matching
"set incsearch    " Incremental search
"set autowrite    " Automatically save before commands like :next and :make
"set hidden   " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)

"MY CONFIGS HERE
"FOR THE LOOKS LOL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""FOR eruby.vim"""""""""""""""""""""
"~/.vim/bundle/vim-ruby/ftplugin/eruby.vim
"let b:surround_{char2nr('=')} = "<%= \r %>"
"let b:surround_{char2nr('-')} = "<% \r %>"
"""""""""""""""""""""FOR eruby.vim"""""""""""""""""""""
"""""""""""""""rvm implode"""""""""""""""
"globals

" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
" let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
"
" let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_auto_trigger = 1



let g:SuperTabDefaultCompletionType = "<c-n>"

" let g:ctrlp_show_hidden = 1


"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:closetag_filenames = "*.erb,*.html.erb,*.html,*.xhtml,*.phtml, *.tsx, *.jsx"

" Don't look in useless places for ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


" stop vue plugin from being the worst thing ever
let g:vue_disable_pre_processors=1


set omnifunc=syntaxcomplete#Complete

set laststatus=2
let g:airline_powerline_fonts = 1

"let g:nerdtree_tabs_open_on_console_startup=1
"Grab the latest version and stick this in ~/.vim/nerdtree_plugin/override_tab_mapping.vim
" call NERDTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1 })
" function NERDTreeMyOpenInTab(node)
"     call a:node.open({'reuse': "all", 'where': 't'})
" endfunction





"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use smartcase.
" Set minimum syntax keyword length.

" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" " AutoComplPop like behavior.

" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" Enable omni completion.

augroup Group1
  autocmd!
  autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete
  " autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 0
  " autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  " autocmd FileType ruby compiler ruby
augroup END
" autocmd FileType ruby let g:SuperTabDefaultCompletionType = "context"
" Enable heavy omni completion.


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1

" map ƒ <Plug>(easymotion-bd-f)

""fold""
" set foldmethod=syntax
" set foldlevelstart=8

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

"set foldmethod=indent
"set foldnestmax=2

"let g:Powerline_symbols = 'fancy'
set number
set relativenumber
"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""colors"""""""""""""""""""""""""""""""""""""""""""
"solarized theme here
"/Users/Whisky/.vim/bundle/vim-airline-themes/autoload/airline/themes
" let g:airline_theme='bubblegum'
let g:airline_theme='powerlineish'
let g:promptline_theme = 'airline'
" let g:promptline_theme = 'jelly'
"colorscheme solarized
" colorscheme srcery
" colorscheme inori
" colorscheme evening
"colorscheme adventurous
"colorscheme earthburn
"colorscheme earendel
colorscheme mango
"colorscheme Revolution
"colorscheme blazer
" colorscheme znake

" highlight nonText ctermbg=NONE
" highlight Comment cterm=bold
" hi def link jsObjectKey Label

" colorscheme gruvbox
" colorscheme deep-space
" colorscheme onedark

hi Normal ctermbg=none
" hi Normal guibg=#1b202a
" set background=dark
"hi Normal ctermbg=none

"set cursorline
"hi CursorLine cterm=bold ctermbg=0
"hi Comment  guifg=#80a0ff ctermfg=7
"highlight LineNr ctermfg=red ctermbg=none

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:indentLine_color_term = 15
"let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#9191A5'
"let g:indentLine_char ='┆'

"set listchars=tab:❯\
"set listchars=eol:↲ ┆¦┊
"set listchars=tab:❯\ ,eol:↲
"set listchars=tab:⇁\ ,eol:┘

" au VimEnter * IndentGuidesEnable

"set autoindent
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
"set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4 noexpandtab
"retab!

set list
set listchars=tab:\ \ ,eol:¬
"set listchars=tab:\┆\ ,eol:┘ ¬
"hi SpecialKey ctermfg=8 guifg=#649A9A
"hi SpecialKey  guifg=#649A9A
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set noet|retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"«»※↞↲↽⇙Γ
"┘⇁↵↸⇙
"set showbreak=↪\
"set listchars=tab:→\ ,eol:↲ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start
set clipboard=unnamed
"save
inoremap ß <ESC>:w <CR>

"tab completion
" function! Tab_Or_Complete()
"   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"     return "\<C-N>"
"   else
"     return "\<Tab>"
"   endif
" endfunction
" inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" inoremap <S-Tab> <C-P>

nnoremap <Tab> gt
nnoremap <S-Tab> gT

nnoremap † :bn!<CR>
nnoremap ˇ :bp!<CR>
nnoremap œ :bd<CR>
nnoremap <leader>t :TagbarToggle<CR>

"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent>  ˙ :TmuxNavigateLeft<cr>
"nnoremap <silent>  ∆ :TmuxNavigateDown<cr>
"nnoremap <silent>  ˚ :TmuxNavigateUp<cr>
"nnoremap <silent>  ¬ :TmuxNavigateRight<cr>
"nnoremap <silent>  « :TmuxNavigatePrevious<cr>
"nnoremap ˙ <C-W>h
"nnoremap ∆ <C-W>j
"nnoremap ˚ <C-W>k
"nnoremap ¬ <C-W>l
"COPYING INTO REGISTERS
nnoremap ; :
vnoremap a "jy
vnoremap z "ky
vnoremap x "ly
nnoremap å "jp
nnoremap Ω "kp
nnoremap ≈ "lp

inoremap <M-h> <C-o>h
inoremap ˙ <C-o>h
inoremap ∆ <C-o>gj
inoremap ˚ <C-o>gk
inoremap ¬ <C-o>l
inoremap ∑ <C-o>w
inoremap ∫ <C-o>b
inoremap ø <C-o>o
inoremap Ø <C-o>O

inoremap <C-z> <space>
nnoremap <C-z> <space>

inoremap … <ESC>
vnoremap … <ESC>
cnoremap … <ESC>
" nnoremap j gj
" nnoremap k gk
"inoremap <Up> <ESC>kddpkA
"inoremap <Down> <ESC>ddpA
nnoremap <Up> kddpk
nnoremap <Down> ddp
"nnoremap <Right> xp

function! P_Compile()
  let i =  expand('%:e')
  if ( i == "rb" )
    let c =  " ruby " .expand('%:p')
    return c
  elseif ( i == 'js' )
    let c =  " node " .expand('%:p')
    return c
  else
    let c = " echo lol no compiler found "
    return c
  endif
endfunc

" nmap <leader>q  :w \| call VimuxRunCommand(P_Compile()) <CR>
" nmap <leader>k  :w \| call VimuxRunCommand("!!") <CR>
" nmap <leader>s  :w \| call VimuxRunCommand("rspec --f-f") <CR>
" nmap <leader>t  :w \| call VimuxRunCommand("learn") <CR>
"nmap <leader>S :w \| call VimuxRunCommand("learn && learn submit && exit") <CR>
" nmap <leader>Q  :w \| call VimuxRunCommand(" rspec " .expand('%:p:h'). "/../spec/*" .expand('%:t:r')."*") <CR>
" nmap <leader>1q :w \| call VimuxRunCommand(" rspec " .expand('%:p:h'). "/../spec/*" .expand('%:t:r')."* --f-f") <CR>
" nmap <leader>1s :call VimuxRunCommand(" rspec " .expand('%:p'). ":".line('.')) <CR>

"db/schema.rb
" nmap <leader>db :call VimuxRunCommand(" ccat db/schema.rb ") <CR>

"rake routes
" nmap <leader>dr :call VimuxRunCommand(" rake routes ") <CR>

" nmap <leader>pry :call VimuxRunCommand(" pry ") <CR>
" nmap <leader>pe :call VimuxRunCommand(" exit ") <CR>
" nmap <leader>r :call VimuxRunCommand(getline('.') ." ") <CR>
" vmap <leader>r :call VimuxRunCommand(getline('.') ." ") <CR>

"retab
nmap <C-w>t :set tabstop=2 \| retab! \| set tabstop=4 <cr>

" nmap <C-w>n :NERDTreeTabsToggle<cr>
" nmap <leader>n :NERDTreeTabsToggle<cr>

nmap <C-w>n :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeToggle<cr>

function! NumberToggle()
if(&relativenumber == 1)
  set relativenumber!
  else
  set relativenumber
  endif
endfunc

nnoremap <leader>z :call NumberToggle()<cr>

" Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"   source /etc/vim/vimrc.local
" endif

" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
