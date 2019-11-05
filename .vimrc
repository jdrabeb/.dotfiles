" ### V U N D L E - Plugin Manager ###
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/fzf.vim' " Find ...
Plugin 'junegunn/fzf' " Find ...
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/colorizer'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'
Plugin 'scrooloose/nerdtree' " Tree (F1)
Plugin 'tpope/vim-fugitive' " Git in vim
Plugin 'scrooloose/nerdcommenter' " (De)comment a block
Plugin 'godlygeek/tabular' " Line up text ':Tab/='
Plugin 'vim-scripts/nextval' " Increment/Decrement value + -
Plugin 'plasticboy/vim-markdown' " Markdown
Plugin 'posva/vim-vue' " Syntastic coloration for vue js
Plugin 'ervandew/supertab' " Completions with Tab
Plugin 'terryma/vim-multiple-cursors' " Multiple selections
Plugin 'airblade/vim-gitgutter' " See git add/edit/remove
Plugin 'joshdick/onedark.vim'
call vundle#end()

"set rtp+=/usr/local/opt/fzf

" syntax on
" colorscheme monokai
set t_Co=256
set number
set mouse=a
set noswapfile
set hlsearch

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Display tabs, eol ..., column 80
set list
set listchars=tab:>-,eol:¬,nbsp:¤
let &colorcolumn="80"

" Indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Remove trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e
:set ruler



" ### P L U G I N   S E T T I N G S ###

" Enable RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NerdTree
nnoremap <F1> :NERDTreeToggle<CR>

" NerdCommenter
filetype plugin on

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='lucius'

" Vim-markdown
let g:vim_markdown_folding_disabled = 1

" Neomake
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)

" ### S H O R T C U T S ###
:let mapleader = ","
nnoremap <Leader>o :Files ~/src/cobra<CR>
set backspace=indent,eol,start

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme monokai
"colorscheme onedark
