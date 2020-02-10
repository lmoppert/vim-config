" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=none
hi Normal 		guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText 		guifg=#808080 guibg=#303030 gui=none
hi LineNr 		guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#99968b gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#e5786d gui=none
hi String 		guifg=#95e454 gui=italic
hi Identifier 	guifg=#cae682 gui=none
hi Function 	guifg=#cae682 gui=none
hi Type 		guifg=#cae682 gui=none
hi Statement 	guifg=#8ac6f2 gui=none
hi Keyword		guifg=#8ac6f2 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number		guifg=#e5786d gui=none
hi Special		guifg=#e7f6da gui=none

" Colors for vimoutliner
hi OL1 guifg=#f6f3e8
hi OL2 guifg=#e5786d
hi OL3 guifg=#8ac6f2
hi OL4 guifg=#95e454
hi OL5 guifg=#f6f3e8
hi OL6 guifg=#e5786d
hi OL7 guifg=#8ac6f2
hi OL8 guifg=#95e454
hi OL9 guifg=#f6f3e8

" colors for tags
hi outlTags guifg=darkred

" color for body text
hi BT1 guifg=#99968b	gui=italic
hi BT2 guifg=#99968b	gui=italic
hi BT3 guifg=#99968b	gui=italic
hi BT4 guifg=#99968b	gui=italic
hi BT5 guifg=#99968b	gui=italic
hi BT6 guifg=#99968b	gui=italic
hi BT7 guifg=#99968b	gui=italic
hi BT8 guifg=#99968b	gui=italic
hi BT9 guifg=#99968b	gui=italic

" color for pre-formatted text
hi PT1 guifg=blue
hi PT2 guifg=blue
hi PT3 guifg=blue
hi PT4 guifg=blue
hi PT5 guifg=blue
hi PT6 guifg=blue
hi PT7 guifg=blue
hi PT8 guifg=blue
hi PT9 guifg=blue

" color for tables 
hi TA1 guifg=#95e454
hi TA2 guifg=#95e454
hi TA3 guifg=#95e454
hi TA4 guifg=#95e454
hi TA5 guifg=#95e454
hi TA6 guifg=#95e454
hi TA7 guifg=#95e454
hi TA8 guifg=#95e454
hi TA9 guifg=#95e454

" color for user text (wrapping)
hi UT1 guifg=#857b6f
hi UT2 guifg=#857b6f
hi UT3 guifg=#857b6f
hi UT4 guifg=#857b6f
hi UT5 guifg=#857b6f
hi UT6 guifg=#857b6f
hi UT7 guifg=#857b6f
hi UT8 guifg=#857b6f
hi UT9 guifg=#857b6f

" color for user text (non-wrapping)
hi UB1 guifg=#384048
hi UB2 guifg=#384048
hi UB3 guifg=#384048
hi UB4 guifg=#384048
hi UB5 guifg=#384048
hi UB6 guifg=#384048
hi UB7 guifg=#384048
hi UB8 guifg=#384048
hi UB9 guifg=#384048

" colors for folded sections
hi Folded guifg=darkcyan guibg=bg
hi FoldColumn guifg=darkcyan guibg=bg

" colors for experimental spelling error highlighting
" this only works for spellfix.vim with will be cease to exist soon
hi spellErr gui=underline guifg=yellow
hi BadWord gui=underline guifg=yellow
