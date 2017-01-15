" plugin
"
" desc.:
"   A global plugin script.
"   `:help write-plugin`
"
" misc.:
"   - Global plugins are executed in the startup of Vim.
"

" Avoid loading the script twice.
" Note that the variable name should be changed since this is global.
if exists("g:loaded_mine")
    finish
endif
let g:loaded_mine = 1

" To use line continuatione, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

""""""""""""""""""""
" Add commands here
""""""""""""""""""""

" Add key mappings
" The example maps '<Leader>a' to call do_something() in the script if users does not map yet.
" if !hasmapto('<Plug>DoMine')
"     map <unique> <Leader>a <Plug>MineDoSomething
" endif
" noremap <unique> <script> <Plug>MineDoSomething <SID>DoSomething
" noremap <SID>DoSomething :call <SID>do_something()<CR>

" Declare script-local function
" function! s:do_something() abort
"     echo 'do something'
" endfunction

" Declare command
" if !exists(":DoSomething")
"     " Use function in the script
"     command -nargs=0 DoSomething :call s:do_something()
" endif
" Use autoload function
" if !exists(":DoAutoload")
"     command -nargs=0 DoAutoload :call mine#do_autoload()
" endif

" Restore 'cpoptions'
let &cpo = s:cpo_save
unlet s:cpo_save
