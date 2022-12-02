" Vim syntax file
" Language:		JEM Mapping file for Amazon FLASH
" Version Info: @(#)jem.vim 0.9 
" Author:		Jaewon Choi <jaewon@amazon.com>
" Last Change:	Tue, 12 Apr 2016 


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" shut case off
syn case ignore
syn match	jemComment	"#.*$"
syn keyword jemKeyword	useCaseSetName useCaseName lookupName ownerTeamEmail ctiCategory ctiType ctiItem attributes values
syn match	jemNumber	"\<\d\+"
syn region	jemString	start="\"" end="\""
syn match	jemHeader	"^[A-Za-z0-9. _-]\{-}:"he=e-1
syn match	jemLabel	"^[A-Za-z0-9._-]\{-}="he=e-1
syn region	jemLookup	start="\[" end="\]"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jem_syntax_inits")
	if version < 508
		let did_jem_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	HiLink jemComment	Comment
	HiLink jemKeyword	Special
	HiLink jemNumber	Number
	HiLink jemString	String
	HiLink jemHeader	Special
	HiLink jemLabel		Type
	HiLink jemLookup	Identifier

	delcommand HiLink
endif

let b:current_syntax = "jem"

" vim:ts=4
