" ""
"



" ‰‰ŽZŽq""
(((5+5)*2)+(9/3)) printNl
"


" ”z—ñ""
Smalltalk at: #x put: 0.
x := Array new: 20.
(x at: 1) printNl.
x at: 1 put: 99
(x at: 1) printNl
"



" ŠKãŒvŽZ""
Integer extend [
    factorial [
        self = 0 ifTrue: [ ^1 ].
        self > 0 ifTrue: [ ^(self - 1) factorial * self ].
    ]
]

10 factorial printNl.
"

" •¶Žš•\Ž¦""
'anokutara' printNl
"


" hell""
Object subclass: hell
[
  scream: val
  [
    <category: 'printing'>
    Transcript show: 'adddd'; show: val; cr.
  ]
]

| hellgaze |
hellgaze := hell new.
hellgaze scream: 'barrr'.
"

