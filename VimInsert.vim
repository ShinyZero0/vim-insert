" WRAP PLAIN TEXT BY WORDS
autocmd FileType text set linebreak

" CHANGE KEYBOARD LAYOUT ON SWITCHING MODE
function Insert_Leave()
    let $vimlayout=system('xkb-switch -p')
    !xkb-switch -s us
endfunction
function Insert_Enter()
    if $vimlayout != ""
    !xkb-switch -s $vimlayout
    endif
endfunction
autocmd InsertLeave * silent! call Insert_Leave()
autocmd InsertEnter * silent! call Insert_Enter()


" SENTENCE SPLITTER
nnoremap gs <Nop>
nnoremap <silent> gss mz:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'z
nnoremap <silent> gsip mzvip:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'z
vnoremap <silent> gs mz:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'z

" SELECT THE WHOLE BUFFER WITH vA or VA
" vnoremap A <Esc>ggVG
" If you are going to use visual block A, leave the following func, because the previous mapping breaks it
function SelectAll()
    let curMode = mode()
    if curMode == "V"
        call feedkeys("\<Esc>ggVG", "n")
    else
        call feedkeys("A", 'n')
    endif
endfunction
vnoremap A <cmd>call SelectAll()<CR>
