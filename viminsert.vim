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

autocmd FileType text set linebreak

" SENTENCE SPLITTER
nnoremap gs <Nop>
nnoremap <silent> gss ml:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'l
nnoremap <silent> gsip mlvip:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'l
vnoremap <silent> gs ml:s/\([\.?!]\) \([А-ЯA-Z]\)/\1\r\2/ge\|:'[,']normal ==<CR>:noh<CR>'l
