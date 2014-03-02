" File: .
" Author: justin domingue <domingue.justin@gmail.com>
" Last Change: Sun  2 Mar 14:35:24 2014 
" Version: 0.01 

" Highlights occurence of word under cusror in the current buffer
function! s:visional()
  call clearmatches()
  let word = expand("<cword>")
  if match(synIDattr(synID(line("."), col("."), 1), "name"), "\v\CvimCommand") >= 0
    return
  endif
  if exists("g:visionalhl")
    exe "highlight VisionalHl " . g:visionalhl
  else
    highlight VisionalHl ctermbg=black ctermfg=red guifg=#ff0000 guibg=#000000 ctermfg=LightRed gui=bold
  endif
  call matchadd('VisionalHl', '\<' . expand("<cword>") . '\>')

endfunction

    let g:visionalnoauto = 0
if (!exists("g:visionalnoauto") || (g:visionalnoauto == 1))
  augroup HighlightVisional
    au!
    au CursorMoved * call <SID>visional()
    au CursorMovedi * call <SID>visional()
  augroup END
endif

command! Visional :call <sid>visional()
