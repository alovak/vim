"
" rdark-terminal - vim color scheme
"
" Modified: Lukas Grässlin
"
" Based on rdark
" (http://www.vim.org/scripts/script.php?script_id=1732)
"
" Originally converted with CSApprox and modified a bit
" to fit a 256 color capable terminal.
" (http://www.vim.org/scripts/script.php?script_id=2390)
"
" Info: As the original background color is not available in 256 color mode
" I've set it to black. But you can set the color your terminal should display
" for black to #1e2426 and you will have almost a 1:1 copy of the gui scheme.
" I also suggest to set the second black color to #2c3032. (It is the
" background color which ist used for NonText)
" If you're using a terminal which reads from Xdefaults (e.g. urxvt) you just
" do this in your .Xdefaults:
" "*color0:	rgb:1e/24/26"
" "*color8:	rgb:2c/30/32"
"

set background=dark

hi clear
syntax reset

let colors_name="rdark-terminal"

set cursorline
hi CursorLine term=NONE cterm=NONE ctermbg=237

hi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=249
hi NonText term=NONE cterm=NONE ctermbg=234 ctermfg=249
hi Cursor term=NONE cterm=NONE ctermbg=1 ctermfg=1
hi ColorColumn term=NONE cterm=NONE ctermbg=234 ctermfg=1

hi WhiteSpace ctermbg=15 ctermfg=15

" search
hi IncSearch term=reverse cterm=NONE ctermbg=208 ctermfg=0
hi Search term=reverse cterm=NONE ctermbg=208 ctermfg=0

" window elements

hi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111
hi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16
hi Error term=reverse cterm=NONE ctermbg=160 ctermfg=255
hi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=215
hi Number term=NONE cterm=NONE ctermbg=bg ctermfg=113
hi String term=NONE cterm=NONE ctermbg=bg ctermfg=66
hi Function term=NONE cterm=NONE ctermbg=bg ctermfg=214
hi Define term=NONE cterm=NONE ctermbg=bg ctermfg=166
hi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=196
hi MatchParen term=reverse cterm=NONE ctermbg=215 ctermfg=23
hi Comment term=bold cterm=NONE ctermbg=bg ctermfg=240
hi Constant term=underline cterm=NONE ctermbg=bg ctermfg=112
hi Special term=bold cterm=NONE ctermbg=bg ctermfg=248
" hi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=52
hi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=252
hi Statement term=bold cterm=NONE ctermbg=bg ctermfg=69
hi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=215
hi Type term=underline cterm=NONE ctermbg=bg ctermfg=255
hi LineNr term=underline cterm=NONE ctermbg=0 ctermfg=59
hi ExtraWhitespace term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi Visual term=reverse cterm=NONE ctermbg=102 ctermfg=255

hi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=250
hi PmenuSel term=NONE cterm=NONE ctermbg=15 ctermfg=16
hi PmenuSbar term=NONE cterm=NONE ctermbg=238 ctermfg=238
hi PmenuThumb term=NONE cterm=NONE ctermbg=102 ctermfg=102

hi StatusLine term=reverse,bold cterm=NONE ctermbg=250 ctermfg=0
hi StatusLineNC term=reverse cterm=NONE ctermbg=102 ctermfg=16
hi VertSplit term=reverse cterm=NONE ctermbg=102 ctermfg=59
hi Directory term=bold cterm=NONE ctermbg=bg ctermfg=231
hi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231
hi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=74
hi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg
hi TabLine term=underline cterm=underline ctermbg=16 ctermfg=102
hi TabLineSel term=bold cterm=NONE ctermbg=59 ctermfg=255
hi TabLineFill term=reverse cterm=NONE ctermbg=16 ctermfg=16
hi cppSTLType term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cssUIProp term=NONE cterm=NONE ctermbg=bg ctermfg=188
hi vimAutoEvent term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cNumbers term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi phpPropertySelectorInString term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi FoldeColumn term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi Question term=NONE cterm=NONE ctermbg=bg ctermfg=113
hi Title term=bold cterm=bold ctermbg=bg ctermfg=215
hi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg
hi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196
hi WildMenu term=NONE cterm=NONE ctermbg=233 ctermfg=255
hi Folded term=NONE cterm=NONE ctermbg=25 ctermfg=188
hi phpSemicolon term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpFunctions term=NONE cterm=NONE ctermbg=bg ctermfg=188
hi phpParent term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi javaScriptBraces term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi javaScriptOperator term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=145
hi cCppBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi htmlTitle term=NONE cterm=NONE ctermbg=bg ctermfg=113
hi cUserCont term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cssPseudoClassId term=NONE cterm=NONE ctermbg=bg ctermfg=255
hi cssBraces term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi cssIdentifier term=NONE cterm=NONE ctermbg=bg ctermfg=215
hi cssTagName term=NONE cterm=NONE ctermbg=bg ctermfg=215
hi cMulti term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=61
hi DiffAdd term=bold cterm=NONE ctermbg=0 ctermfg=113
hi DiffChange term=bold cterm=NONE ctermbg=0 ctermfg=fg
hi DiffDelete term=bold cterm=bold ctermbg=0 ctermfg=215
hi DiffText term=reverse cterm=NONE ctermbg=0 ctermfg=fg
hi SignColumn term=NONE cterm=NONE ctermbg=16 ctermfg=51
hi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196
hi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21
hi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201
hi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51
hi htmlSpecialTagName term=NONE cterm=NONE ctermbg=bg ctermfg=145
hi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=188
hi cBitField term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cssSelectorOp term=NONE cterm=NONE ctermbg=bg ctermfg=255
hi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi cNumbersCom term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi vimFuncName term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi phpRegionDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=139
hi phpPropertySelector term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi cCppParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg
hi phpOperator term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpArrayPair term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpAssignByRef term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpRelation term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpMemberSelector term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpUnknownSelector term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi phpVarSelector term=NONE cterm=NONE ctermbg=bg ctermfg=145
hi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=102
hi vimFold term=NONE cterm=NONE ctermbg=bg ctermfg=fg
