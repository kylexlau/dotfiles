" I got to clean my vimrc file someday
" add all plugins to rep
" gerneral
syntax on
set nocompatible " get out of vi's compatible mode.
set nobackup " no backup file
set noswapfile " no swap file
set noerrorbells " no sound on errors.
set magic "set magic on
set backspace=eol,start,indent " set backspace
set iminsert=1 " no auto start input method .
set history=49 " sets how many lines of history VIM har to remember
set showcmd " display incomplete commands

" formating
" set wrap " wrap lines, or nowrap.
set formatoptions+=mM
set tw=70  " textwidth

" encoding
set fileencodings=utf-8,cp936,big5,ucs-bom,euc-jp,euc-kr,latin1
set enc=utf-8
set helplang=cn

" indenting
"set autoindent " ai, auto indent
set cindent "c-style indeting
"set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1 shiftwidth=2 tabstop=8 " GNUstyle indenting
set shiftwidth=4
set tabstop=8
"set smarttab " smart tab
"set si "smart indent
	
" searching
set incsearch " do incremental searching
set hlsearch "highlight search things
set ignorecase " ignore case when searching
set smartcase " smartcase

" UI
set go=mT " get rid of munubar, toolbar, and scrollbal
" au GUIEnter * simalt ~x  " fullscreen for Windows
" set nu  show line number
set ru " ru=ruler
set showmatch "show matching bracets
set laststatus=0 " status line mode

" Mapping
map <Space> <C-D>
nmap <F2> :nohlsearch<CR>
set pastetoggle=<F3>
map <F4> :%s/\s*$//g<cr>:noh<cr>'' " remove indenting on empty lines
map <F5> <ESC>i<C-R>=strftime（"%Y-%m-%d"）<ESC><ESC>` " insert time stamp

" Functions
"  imput method close when press Esc
" :inoremap <ESC> <ESC>:set iminsert=0<CR>
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm " remove the Windows ^M

" Comments
" , #perl # comments
map ,# :s/^/#/<CR>
" ,/ C/C++/C#/Java // comments
map ,/ :s/^/\/\//<CR>
" ,< HTML comment
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
" c++ java style comments
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>
