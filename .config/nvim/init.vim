"------------------------------------------
"------------------------------------------
"       === NEOVIM CONFIG FILE ===
"------------------------------------------
"------------------------------------------
" Author: `Evan Sherwood`                 |
"------------------------------------------
" Email:  `evan.sherwood@keemail.me       |
"------------------------------------------
" Github: `https://github.com/Alanwatts42`|
"------------------------------------------
set nocompatible
let autoload = '/home/evan/.config/nvim/autoload/'                                  
if empty(autoload)          
    silent !wget 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' '/home/evan/.config/nvim/autoload/'
    autocmd VimEnter * PlugInstall --sync | source %
endif
"----------------------------------------
"`:PlugInstall` - Install the damn things
"`:PlugInstall!` - Sometimes you have to yell
"`:PlugUpdate` - Expand or die
"`:PlugUpdate!` - Expand or die
"`:PlugClean` - You don't wanna start getting mold in there
"`:PlugClean!` - You don't wanna start getting mold in there
"----------------------------------------
call plug#begin('/home/evan/.config/nvim/plugged')
" Coding/Programming --------
Plug 'tpope/vim-surround'           " easy '[ ( 'surround' ) ]'
Plug 'tpope/vim-commentary'         " easy comments
Plug 'tomtom/tcomment_vim'          " <v><select>gcc comment selected text
Plug 'somini/vim-autoclose'         " easy [](){}, etc.
Plug 'FooSoft/vim-argwrap'          " <leader>a to change arg-wrap style
Plug 'scrooloose/syntastic'         " syntax highlighting
" snippets -----------------
" Plug 'SirVer/ultisnips'             " see 'snippets' dirs
" virtualenv -------------------
Plug 'jmcantrell/vim-virtualenv'        
Plug 'PieterjanMontens/vim-pipenv'
" Web Development -------------------------
Plug 'mattn/emmet-vim' " HTML editing tools
" -NCM2-----------------------------------
Plug 'ncm2/ncm2'                        " main ncm2 plugin
" Plug 'dlang/dub'                      " dlang requirement
" Plug 'dlang/dmd'                      " dlang requirement
" Plug 'dlang/druntime'                 " dlang requirement
" Plug 'dlang/phobos'                   " dlang requirement
" Plug 'dlang/tools'                    " dlang requirement
" Plug 'dlang/dlang.org'                " dlang requirement
Plug 'roxma/nvim-yarp'                  " dlang requirement

"----completion----------------------------------
" Plug 'Shougo/neoinclude'                " completion engine
Plug 'prabirshrestha/asyncomplete.vim'  " Completion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'Shougo/neosnippet.vim'
" ------------------------------------------------
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-tagprefix'
Plug 'filipekiss/ncm2-look.vim'
Plug 'ncm2/ncm2-gtags'
Plug 'ncm2/ncm2-syntax'
Plug 'ncm2/ncm2-neoinclude'
Plug 'wellle/tmux-complete.vim'
Plug 'yuki-ycino/ncm2-dictionary'
Plug 'fgrsnau/ncm2-aspell'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'loonies/ncm2-ledger'
" Plug 'svermeulen/ncm2-yoink'            " yank history
Plug 'TyberiusPrime/ncm2-bufline'       " line completion
Plug 'ncm2/ncm2-cssomni'                " css
Plug 'ncm2/ncm2-tern'                   " javascript
Plug 'mhartington/nvim-typescript'      " typescript
Plug 'ncm2/ncm2-jedi'                   " python
Plug 'ncm2/ncm2-racer'                  " rust
Plug 'ncm2/ncm2-pyclang'                " c/c++
Plug 'lervag/vimtex'                    " LaTex
Plug 'ncm2/ncm2-vim'                    " vimscript
Plug 'ncm2/ncm2-go'                     " golang
Plug 'phpactor/ncm2-phpactor'           " php
Plug 'ObserverOfTime/ncm2-jc2'          " java
Plug 'gaalcaras/ncm-R'                  " R
Plug 'HiPhish/ncm2-vlime'               " Common Lisp
Plug 'oncomouse/ncm2-biblatex'          " Markdown
Plug 'VTimofeenko/ncm2-ebuild'          " Ebuilds
" snippet integration
" Plug 'ncm2/ncm2-ultisnips'
" subscope detection
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-rst-subscope'
" utils
Plug 'ncm2/ncm2-match-highlight'
Plug 'ncm2/ncm2-highprio-pop'

" additional python-related plugins
Plug 'Yggdroot/indentLine'              " indent guide
Plug 'w0rp/ale'                         " syntax check
Plug 'Chiel92/vim-autoformat'           " autoformatter
"----------------------------------------
" Extra Vim functionality
Plug 'scrooloose/nerdtree'              " file manager
Plug 'tpope/vim-eunuch'
Plug 'ctrlpvim/ctrlp.vim'               " fuzzy file search
Plug 'easymotion/vim-easymotion' " Easier 'vi' navigation, any filetype 
"----------------------------------------
" Look & Feel
Plug 'flazz/vim-colorschemes'
Plug 'christophermca/meta5'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Lokaltog/powerline'
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
"----------------------------------------
" Git/Version-Control/n/]
"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'               " diff tool
Plug 'christoomey/vim-conflicted'           " conflict helper
"----------------------------------------
" Markup/Markdown
Plug 'Rykka/riv.vim'
Plug 'plasticboy/vim-markdown'
"----------------------------------------
" Deprecated
"----------------------------------------
" Plug 'godlygeek/tabular'
" Plug 'preservim/tagbar'
" Plug 'rentalcustard/exuberant-ctags'
" Python
" Plug 'davidhalter/jedi-vim' " code completion engine (python mainly)
" Plug 'ervandew/supertab' " allows completion with <tab> for jedi-vim
" Plug 'zchee/deoplete-jedi'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"----------------------------------------
call plug#end() 
"----------------------------------------
" Asyncomplete
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

" NCM2
" augroup NCM2
" autocmd!
"   " enable ncm2 for all buffers
  "autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  " set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  " uncomment this block if you use vimtex for LaTex
  " autocmd Filetype tex call ncm2#register_source({
  "           \ 'name': 'vimtex',
  "           \ 'priority': 8,
  "           \ 'scope': ['tex'],
  "           \ 'mark': 'tex',
  "           \ 'word_pattern': '\w+',
  "           \ 'complete_pattern': g:vimtex#re#ncm2,
  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  "           \ })
" augroup END
"----------------------------------------
filetype plugin indent on 
"----------------------------------------
" Look & Feel
syntax enable			" Syntax Highlighting On
set termguicolors
set t_co=256			" 256 Colors
colorscheme meta5		" Colorscheme
"-----------------
" General Settings
"-----------------
set title               		                 " Window Title
set noeb vb t_vb=            		             " No Error Bells
set showcmd             		                    " Show cmds being typed
set number              		                    " IDE-Style line numbers
set ruler               		                    " Line numbering
set sc                  		                    " Incomplete commands
set matchtime=2         		                    " Time to blink match {}
"set matchpairs+=<:>     		                    " For ci< or ci>
set showmatch           		                    " Highlight brackets
set wildignore+=*.bak,*.swp,*.swo
set wildignore+=*.a,*.o,*.so,*.pyc,*.class
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.pdf
set wildignore+=*/.git*,*.tar,*.zip
set wildmenu
set wildmode=longest:full,list:full
set list                		                    " displaying listchars
"----------------------------------------
" Set Text Encoding to UTF-8 
set encoding=utf-8
"----------------------------------------
" <Leader> Key Mapped to Comma ','
let g:mapleader=','
"----------------------------------------
" Clipboard Fixes
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>Y "+y
nnoremap <Leader>P "+p
" Paste Mode <F2>
noremap Y y$
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set clipboard=unnamedplus
" Delete without copying what is being deleted to clipboard
nnoremap <Leader>d "_d
xnoremap <Leader>d "_d
xnoremap <Leader>p "_dP
"----------------------------------------
" Search Options
set incsearch                   " searches as you type
set matchtime=2                 " time to blink match {}
set matchpairs+=<:>             " for ci< or ci>
set showmatch                   " tmpjump to match-bracket
" Find and replace all
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:$s/<C-r>"/
"----------------------------------------
" Screen-Splitting
set splitbelow                  " splits go below w/focus
set splitright                  " vsplits go right w/focus
" Easier Navigating Between Screens
map <a-j> <c-w>j
map <a-k> <c-w>k
map <a-l> <c-w>l
map <a-h> <c-w>h
"----------------------------------------
" Ctrl+E = Go to EOL in Insert Mode
inoremap <C-e> <C-o>$
"----------------------------------------
" Misc Lines and Splits
set laststatus=2                " always show statusline
set linebreak                   " don't cut words on wrap
set listchars=tab:>\            " > to highlight <Tab>
set nolist                      " displaying listchars
set ww=<,>,h,l                  " ww=[commands that wrap around EOL]
"----------------------------------------
" Text/Code Folding
"-----------------------------------------
" set folding to manual - press <F9> to fold selected text
set foldmethod=manual
set foldopen=all
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
" select some lines and press <space> to fold those lines
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"----------------------------------------
" Sounds & Other Peripheral Functions
set noeb  " Attempt to silence error dings for console vim
set ttyfast  " for faster redraws etc
"----------------------------------------
" Easy indent with >> or << with in visual mode
vnoremap < <gv
vnoremap > >gv
"----------------------------------------
" Highlight last inserted text
nnoremap gV '[V']
"----------------------------------------
" Mouse/Cursor (or lack thereof)
set ru                          " Show cursor position even if inactive
set lazyredraw                  " Makes Vim run a bit faster (in theory)
set mouse=a                     " Limited mouse functionality
"----------------------------------------
" Saving/Loading
set autoread                    " refresh if changed
set confirm                     " confirm changed files
set noautowrite                 " never autowrite
set nobackup                    " disable backups
set nowritebackup               " no backup while editing
set noswapfile                  " no swap files 
"----------------------------------------
" Text Formatting
set autoindent                  " preserve indentation
set backspace=indent,eol,start  " normal backspace
set expandtab                   " indents <Tab> as spaces
set ignorecase                  " by default ignore case
set nrformats+=alpha            " incr/decr letters C-a/-x
set shiftround                  " round indent of 'sw'
set shiftwidth=0                " =0 uses 'ts' value
set smarttab                    " tab to 0,4,8 etc.
set softtabstop=-1              " =-1 uses 'sw' value
set tabstop=4                   " <Tab> as 4 spaces
set scrolloff=10                " let 10 lines before cursor during scroll
set exrc                        " enable usage of additional vimrc files
set secure                      " .vimrc files cannot execute/create files
"set cursorline                 " shows line under the cursor
"-------------------------------------------------------------------
" Gvim Windows Fix
if has('win32')
    set guioptions-=m   " remove menubar set
    guioptions-=T       " remove toolbar
    set guioptions-=r   " remove right scrollbar
endif
"-------------------------------------------------------------------
"-------------------------------------------------------------------
" --Coding/Programming--
"-------------------------------------------------------------------
" -Exuberant Ctags-
"-------------------------------------------------------------------
" let g:tagbar_ctags_bin = '/usr/local/bin/ctags' 

"-------------------------------------------------------------------
" --Python--
"-------------------------------------------------------------------
" remapping F9 to save & run the current file with Python3
" nnoremap <F9> :w<cr>:!ipython3 -m pdb %<cr>

"-------------------------------------------------------------------
" pipenv path
let pipenv_venv_path = system('pipenv --venv')
"-------------------------------------------------------------------
"-------------------------------------------------------------------
" remapping F4 to run current file interactively in bpython3
nnoremap <F4> :w<cr>:!tilix -e bpython3 -i % &<cr>

" run Python files with leader p
nnoremap <leader>P :!ipython3 %<cr>
nnoremap <leader>p :!bpython3 %<cr>
"-------------------------------------------------------------------
" jedi config
" --Keys--
" jump from 'foo' to foo=bar'.
let g:jedi#goto_command='<leader>d'
" 'foo' jumps to 'class foo:' or 'def foo(bar):' (python3).
let g:jedi#goto_assignments_command='<leader>g'
let g:jedi#goto_stubs_command='<leader>s'
let g:jedi#goto_definitions_command=''
let g:jedi#documentation_command='<K>'
let g:jedi#usages_command='<leader>n'
let g:jedi#completions_command='<c-n>'
let g:jedi#rename_command='<leader>r'
" --Settings--
" using deoplete for auto-complete so completions are turned off
let g:jedi#completions_enabled=1
let g:jedi#auto_initialization=1
let g:jedi#auto_close_doc=1
let g:jedi#popup_select_first=1
let g:jedi#auto_vim_configuration=1
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
"----------------------------------------
" Shell-Scripting
"----------------------------------------
" Make Shell Scripts Executable with <leader>h
nnoremap <leader>h :!sudo chmod +x %<cr>
" Run Shell Scripts with <leader>e
nnoremap <leader>S<cr>:!./%<cr>
"----------------------------------------
" Use Templates for *.sh and *.py files
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r /home/evan/.config/nvim/templates/template.sh
    autocmd BufNewFile *.py 0r /home/evan/.config/nvim/templates/template.py
    autocmd BufNewFile *.js 0r /home/evan/.config/nvim/templates/template.js
    autocmd BufNewFile *.html 0r /home/evan/.config/nvim/templates/template.html
    autocmd BufNewFile *.css 0r /home/evan/.config/nvim/templates/template.css
    autocmd BufNewFile *.md 0r /home/evan/.config/nvim/templates/template.md
    autocmd BufNewFile *.markdown 0r /home/evan/.config/nvim/templates/template.md
    " autocmd BufNewFile *.travis.yml 0r /home/evan/.config/nvim/templates/template.travis.yml
  augroup END
endif
"----------------------------------------
" Plugin Settings
"----------------------------------------
" Easymotion - 'easymotion/vim-easymotion'
map <Leader>s <Plug>(easymotion-prefix)
"----------------------------------------
" Emmet - 'mattn/emmet-vim' - HTML
let g:user_emmet_expandabbr_key = '<C-a>,' " html expander bind to: <ctrl+a>
"----------------------------------------
" Argwrap - 'FooSoft/vim-argwrap'
nnoremap <silent> <leader>a :ArgWrap<CR>  
"----------------------------------------
" " Tagbar - 'majutsushi/tagbar'
" let g:tagbar_autofocus=0
" let g:tagbar_width=20
" autocmd BufEnter *.py :call tagbar#autoopen(0)
" autocmd BufWinLeave *.py :TagbarClose
" nnoremap <leader>t :TagbarToggle<CR>
"----------------------------------------
" NERDTree - 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']  " ignore files 
let NERDTreeWinSize=40   " size of NERDTree window
let NERDTreeShowHidden=1
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
"----------------------------------------
" Riv-Vim - 'Rykka/riv.vim'
let g:riv_disable_folding=1
"----------------------------------------
" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'python3']
"------------------------------------------
" deoplete
let g:deoplete#enable_at_startup = 1  " necessary for deoplete to run
"---------------------------------------------------------
" vim-airline
let g:airline_theme='monochrome'  " sets theme for vim-airline
"
"
"--------------[END OF CONFIG FILE]-------------------------
