" Avoid loading the script twice.
if exists("g:loaded_kyber")
    " finish
endif
let g:loaded_kyber = 1

" To use line continuatione, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

""""""""""""""""""""
" Add commands here
""""""""""""""""""""

" Add key mappings
" The example maps '<Leader>a' to call kyber_do() in the script if users does not map yet.
" if !hasmapto('<Plug>DoKyber')
"     map <unique> <Leader>a <Plug>KyberDoSomething
" endif
" noremap <unique> <script> <Plug>KyberDoSomething <SID>KyberDo
" noremap <SID>KyberDo :call <SID>kyber_do()<CR>

" Declare script-local function
function! s:kyber_do(cmd, ...) range
    let range = getpos("'<")[1]. ",". getpos("'<")[2]. ":". getpos("'>")[1]. ",". getpos("'>")[2]
    let vargs = join(a:000, " ")
    execute ":!kyber" "do" a:cmd expand('%') range vargs
    redraw!
endfunction

" Declare command
if !exists(":KyberDo")
    " Use function in the script
    command -range -nargs=+ KyberDo :call s:kyber_do(<f-args>)
endif

"""""""""""""""
" End commands
"""""""""""""""

" Restore 'cpoptions'
let &cpo = s:cpo_save
unlet s:cpo_save
