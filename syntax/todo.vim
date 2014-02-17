if exists("b:current_syntax")
  finish
endif

" Vim script to set syntax highlighting for a todo list.
" See README.txt and sample.txt for description and examples.
" Version: 0.4
"
" Author: Suresh S.

syn match todoDate "<\?\d\{1,4}\([-/:]\d\{1,4\}\)\{1,3\}>\?"

" Comments embedded in todo items, inside [].
syn region todoComment   start="\[" end="\]" contained

" Header lines to start sections.
syn match todoHeader1 "^\([0-9].*\s\s*\)\?[A-Z].*:$" contains=todoDate
syn match todoHeader2 "^\_\s\+\zs\([0-9].*\s\s*\)\?[A-Z].*:$" contains=todoDate

syn case ignore

" Normal priority items.
syn region todoNormalPri start="\(^\s*\)\@<=o\s"        end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend
" High priority items.
syn region todoHiPri     start="\(^\s*\)\@<=+\s"        end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend
" Low priority items.
syn region todoLowPri    start="\(^\s*\)\@<=-\s"        end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend
" Unprioritized items.
syn region todoNoPri     start="\(^\s*\)\@<=\*\s"        end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend
" Questions.
syn match todoQuestion     "\(^\s*\)\@<=?\s"        contains=todoComment
syn case match

" Items completed.
syn region todoHalfDone      start="\(^\s*\)\@<=d\s"     end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend
syn region todoDone      start="\(^\s*\)\@<=D\s"     end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend

syn case ignore
" Items ignored/won't do.
syn region todoIgnore    start="\(^\s*\)\@<=[xiXI]\s"   end="\(^\s*[o\-+?dxiDXI]\s\|\n\n\+\)"he=s-1,me=s-1 contains=todoDate,todoComment keepend

" TODO: Fix this to handle multi-line items.
syn match todoIgnore    "\(^\s*\)\@<=[o+\-?].*:\(ignore\|ign\)$" contains=todoDate,todoComment
syn match todoDone      "\(^\s*\)\@<=[o+\-?].*:\(done\|don\)$" contains=todoDate,todoComment
syn match todoHalfDone  "\(^\s*\)\@<=[o+\-?].*:\(incomplete\|inc\)$" contains=todoDate,todoComment

syn case match

"--------------------------------------------------------------------
" Colors and effects.
"--------------------------------------------------------------------
function! SetToDoColors()
  hi todoHeader1                    gui=bold,underline
  hi todoHeader2                    gui=undercurl
  if &background == "dark"
    hi def todoHiPri                guifg=Red ctermfg=16
    hi def todoNormalPri            guifg=Orange gui=bold ctermfg=208
    hi def todoLowPri               guifg=Yellow ctermfg=231
    hi def todoDate                 guifg=LightCyan gui=bold
    hi def todoDone                 guifg=Green ctermfg=76
    hi def todoHalfDone             guifg=LightGreen ctermfg=141
    hi def todoComment              gui=italic
    hi def todoIgnore               guifg=Gray80 ctermfg=234
  else
    hi def todoHiPri                guifg=Red ctermfg=1
    hi def todoNormalPri            guifg=Orange gui=bold ctermfg=10
    hi def todoLowPri               guifg=Yellow ctermfg=221
    hi def todoDate                 guifg=LightCyan gui=bold
    hi def todoDone                 guifg=Green ctermfg=239
    hi def todoHalfDone             guifg=LightGreen ctermfg=69
    hi def todoComment              gui=italic
    hi def todoIgnore               guifg=Gray80 ctermfg=245
  endif
  hi link todoQuestion              TODO
endfunction
augroup TodoHLGroup
  autocmd! ColorScheme * call SetToDoColors()
augroup END
call SetToDoColors()
let b:current_syntax = "todo"
