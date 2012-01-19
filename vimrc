set ls=2            " allways show status line
set hlsearch        " highlight searches
set showcmd         " display incomplete commands
"set showmatch	    " Show matching brackets/braces/parantheses.
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching
set notitle         " When using vim in an xterm it renames the title of that window to 'Thanks for flying vim' on exit. So turn it off
syntax on           " syntax highlighing
filetype off
filetype plugin indent on         " To enable file type detection for syntax highlighting
set tabstop=2
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_  " Show “invisible” characters
set mouse=a         " Enable mouse in all modes

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
set list            " Show whitespace characters

match Todo /\s\+$/  " To highlight trailing white spaces http://stackoverflow.com/a/356214/238880
