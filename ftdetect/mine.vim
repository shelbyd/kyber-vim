" ftdetect
"
" desc.:
"   Vim script to add or edit file detection.
"   `:help filetype`
"
" misc.:
"   - `filetype on` command is necessary to enable the filetype detection.
"   - `set filetype` shows the filetype of the current file.
"
" example:
"   The below example shows the command to let vim to recognize '*.mine' files as 'mine' filetype.
"     au BufRead,BufNewFile *.mine set filetype=mine
"   Use `setfiletype` command to avoid overwrite the filetype option.
"     au BufRead,BufNewFile *.mine setfiletype mine
"
