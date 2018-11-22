" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l



" Remap VIM 0 to first non-blank character
map 0 ^

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


imap df <Esc>

" Open .vimrc
nnoremap <leader>v :tabe ~/.vimrc<CR>:tabm 0<CR>

" Refresh .vimrc
nnoremap <leader>s :! w<CR>:so $MYVIMRC<CR>

set mouse=a

" Select all
nnoremap <C-a> <esc>ggVG<CR>

set splitbelow
set splitright

" Go to middle of line
map mi :call cursor(0, len(getline('.'))/2)<CR>

set ttyfast

set termguicolors

set cursorline

" Paste with auto-indent
nnoremap p ]p

autocmd FileType cpp nnoremap <c-f> :AsyncRun astyle -n % <bar> checktime<CR>

nnoremap <leader>dd "_dd

