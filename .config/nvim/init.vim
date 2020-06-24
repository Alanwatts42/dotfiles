" == Vim/Nvim Config File == ['~/.config/nvim/init.vim'|~/.vimrc']
"------------------------------------------
" Author: `Evan Sherwood`                 |
"------------------------------------------
" Email:  `evan.sherwood@keemail.me       |
"------------------------------------------
" Github: `https://github.com/Alanwatts42`|
"------------------------------------------
set nocompatible
let autoload = '~/.config/nvim/autoload'                                  
if empty(autoload)          
    silent !curl -fLo plug --create-dirs \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
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
call plug#begin()
" Coding/Programming
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'somini/vim-autoclose'
Plug 'FooSoft/vim-argwrap'
Plug 'scrooloose/syntastic'
" Python
Plug 'davidhalter/jedi-vim'
Plug 'jmcantrell/vim-virtualenv'        
Plug 'PieterjanMontens/vim-pipenv'      
"----------------------------------------
" Extra Vim functionality
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'ctrlpvim/ctrlp.vim'   
"----------------------------------------
" Look & Feel
Plug 'flazz/vim-colorschemes'
Plug 'christophermca/meta5'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Lokaltog/powerline'
"----------------------------------------
" Git/Version-Control
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-conflicted'
"----------------------------------------
" Markup/Markdown
Plug 'Rykka/riv.vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
"----------------------------------------
call plug#end() 
"----------------------------------------
filetype plugin indent on 
"----------------------------------------
" Look & Feel
syntax enable			" Syntax Highlighting On
set termguicolors
set t_co=256			" 256 Colors
colorscheme meta5		" Colorscheme
"----------------------------------------
" General Settings
"----------------------------------------
set title               		                    " Window Title
set noeb vb t_vb=            		                " No Error Bells
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
set ww=<,>,h,l                  " ww = commands that wrap around EOL
"----------------------------------------
" Text/Code Folding
"set foldmethod=indent
"set foldopen=all
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
"----------------------------------------
" Gvim Windows Fix
if has('win32')
    set guioptions-=m   " remove menubar set
    guioptions-=T       " remove toolbar
    set guioptions-=r   " remove right scrollbar
endif
"----------------------------------------
" Coding/Programming
"----------------------------------------
" Python
"----------------------------------------
" Remapping F9 to save & run the current file with Python3
nnoremap <F9> :w<cr>:!python3 %<cr>
"----------------------------------------
" Pipenv Path
let pipenv_venv_path = system('pipenv --venv')
"----------------------------------------
" Jedi Config
" Keys
let g:jedi#goto_command="<leader>c"
let g:jedi#goto_assignments_command="<leader>g"
let g:jedi#goto_stubs_command="<leader>s"
let g:jedi#goto_definitions_command=''
let g:jedi#documentation_command="<K>"
let g:jedi#usages_command="<leader>n"
let g:jedi#completions_command="<c-n>"
let g:jedi#rename_command="<leader>r"
" Settings
let g:jedi#completions_enabled=1
let g:jedi#auto_initialization=1
let g:jedi#auto_close_doc=1
let g:jedi#popup_select_first=1
let g:jedi#auto_vim_configuration=0
"----------------------------------------
" Shell-Scripting
"----------------------------------------
" Make Shell Scripts Executable with <leader>e
nnoremap <leader>h<cr>:!sudo chmod +x %<cr>
" Run Shell Scripts with <leader>e
nnoremap <leader>e<cr>:!./%<cr>
"----------------------------------------
" Use Templates for *.sh and *.py files
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
  augroup END
endif
"----------------------------------------
" Plugin Settings
"----------------------------------------
" Argwrap - 'FooSoft/vim-argwrap'
nnoremap <silent> <leader>a :ArgWrap<CR>  
"----------------------------------------
" Tagbar - 'majutsushi/tagbar'
let g:tagbar_autofocus=0
let g:tagbar_width=20
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose
nnoremap <leader>t :TagBarToggle<CR>
"----------------------------------------
" NERDTree - 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']  " ignore files 
let NERDTreeWinSize=40   " size of NERDTree window
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
