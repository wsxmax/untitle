" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

syntax on
set autoindent
set confirm
set smartindent
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
set tabstop=4
set clipboard=unnamed
set softtabstop=4
set shiftwidth=4
set number
set showmatch
set matchtime=5
map <F6>:call CompileRunGpp<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./<"
endfunc
