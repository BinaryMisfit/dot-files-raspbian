" Use w!! to sudowrite
cmap w!! w !sudo tee % > /dev/null<CR>

" Stage files
nnoremap <silent><Leader>gw :Gwrite<CR>
" Git status
nnoremap <silent><Leader>gs :Gstatus<CR>
" Commit staged changes
nnoremap <silent><Leader>gc :Gcommit<CR>
" Push changes to origin
nnoremap <silent><Leader>gp :Gpush<CR>
" Pull changes from origin
nnoremap <silent><Leader>gu :Gpull<CR>

" Disable the <up> key
nnoremap <silent> <up> <nop>
" Disable the down key
nnoremap <silent> <down> <nop>
" Disable the left key
nnoremap <silent> <left> <nop>
" Disable the right key
nnoremap <silent> <right> <nop>

" Use F5 to reload the configuration
nnoremap <silent> <F5> :source $MYVIMRC<CR>
" Use F7 to delete the current session file
nnoremap <silent> <F7> :SDelete! Last-Session<CR>
" Use F8 to load the last session file
nnoremap <silent> <F8> :SLoad Last-Session<CR>
" Use F9 to save the last session file
nnoremap <silent> <F9> :SSave! Last-Session<CR>

" Show documentation
nnoremap <silent> K :call <SID>show_doc()<CR>
