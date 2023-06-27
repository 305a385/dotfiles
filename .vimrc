set nocompatible
filetype on
filetype plugin off
filetype indent on
syntax on
set number

" Set tab width to 2 spaces.
set tabstop=4
set shiftwidth=4

" Use tabs, not spaces
set softtabstop=0 noexpandtab
" Do not save backup files.
set nobackup
	
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

call plug#end()
" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R


" Show the status on the second to last line.
set laststatus=2

" }}}

" MAPPINGS --------------------------------------------------------------- {{{
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>


" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup autorestart
	autocmd!
	"restarts waybar when config is written
	autocmd BufWritePost,FileWritePost ~/dotfiles/.config/waybar/*  silent !killall waybar; nohup waybar & disown
augroup END

" generates skeleton files
augroup skeleton
	autocmd!
	autocmd BufNewFile *.html 0r ~/.vim/skeletons/skeleton.html
	autocmd BufNewFile *.php 0r ~/.vim/skeletons/skeleton.php
augroup END


" enable wrapping for markdown/text files

augroup textfiles
	autocmd!
	autocmd BufRead *.md setlocal wrap linebreak nolist
	autocmd BufRead *.txt setlocal wrap linebreak nolist
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
	set undodir=~/.vim/backup
	set undofile
	set undoreload=10000
endif

set background=dark

colorscheme molokai

" makes .h detect as C instead of c++
let g:c_syntax_for_h = 1
" }}}

