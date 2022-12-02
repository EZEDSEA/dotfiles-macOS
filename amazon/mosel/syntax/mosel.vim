" Mosel specific syntax highlightings.

if exists("b:current_syntax")
  finish
endif

" Comments
syntax match moselComment "\v!.*$"

" Functions
syntax match moselFunction /^model\|end-model/
syntax match moselFunction /parameters\|end-parameters/
syntax match moselFunction /declarations\|end-declarations/
syntax match moselFunction /initializations\|end-initializations/
syntax match moselFunction /function\|end-function/

" Numbers
syntax match moselNumber '[-+]\=\d\+'
syntax match moselNumber '[-+]\=\d\+\.\d*'
syntax match moselNumber '[-+]\=\d\+[eE][\-+]\=\d\+'
syntax match moselNumber '[-+]\=\d\+\.\d*[eE][\-+]\=\d\+'

" Strings
syntax region moselString start=/"/ skip=/\\./ end=/"/
syntax region moselString start=/'/ skip=/\\./ end=/'/

" Parenthesis
syntax match moselParens /[(){}]/

" Operators
syntax match moselOperator "\v\="
syntax match moselOperator "\v\=>"
syntax match moselOperator "\v\=<"
syntax match moselOperator "\v\>"
syntax match moselOperator "\v\<"
syntax match moselOperator "\v\:"
syntax match moselOperator "\v\*"
syntax match moselOperator "\v/"
syntax match moselOperator "\v\+"
syntax match moselOperator "\v-"
syntax match moselOperator "\v\?"
syntax match moselOperator "\v\*\="
syntax match moselOperator "\v/\="
syntax match moselOperator "\v\+\="
syntax match moselOperator "\v-\="

" Keywords
syntax keyword moselKeyword uses
syntax keyword moselKeyword set of
syntax keyword moselKeyword forward
syntax keyword moselKeyword procedure
syntax keyword moselKeyword writeln
syntax keyword moselKeyword readln
syntax keyword moselKeyword fopen fclose
syntax keyword moselKeyword if elif else
syntax match moselKeyword   /end-if/
syntax keyword moselKeyword case
syntax match moselKeyword   /end-case/
syntax keyword moselKeyword forall
syntax keyword moselKeyword while
syntax keyword moselKeyword do
syntax match moselKeyword   /end-do/
syntax keyword moselKeyword record
syntax match moselKeyword   /end-record/
syntax keyword moselKeyword string
syntax keyword moselKeyword integer
syntax keyword moselKeyword real
syntax keyword moselKeyword array
syntax keyword moselKeyword from


" Highlighting
highlight default link moselComment   Comment
highlight default link moselFunction  Function
highlight default link moselNumber    Number
highlight default link moselString    String
highlight default link moselParens    Function
highlight default link moselOperator  Operator
highlight default link moselKeyword   Keyword


let b:current_syntax = "mosel"
