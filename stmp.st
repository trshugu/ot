" ""
"



" •Ï”""
a := 20.	"a is 20"

Object subclass: Hoge [
  Hoge class >> new [
    | r |
    r := super new.
    'I am constructor.' displayNl.
    ^r.
  ]
].
b := Hoge new.
"

" hell""
123 printNl.
'Hello, world!' printNl.
'Hello, world!' displayNl.
Transcript show: 'Hello, Smalltalk!'; nl.
Transcript show: '%1 is not %2' % #(123 456).
"

" Stream""
Transcript show: 'value = %1' % {42}.
"


" BlockClosure""
([:x | x * 2] value: 10) printNl.

double := [:x | x * 2].
(double value: 100) printNl.

([:x :y :z | x * y * z] value: 5 value: 6 value: 7) printNl.

([:a :b :c :d | a + b + c + d] valueWithArguments: #(1 2 3 4)) printNl
"


" •ªŠò""
Object subclass: #ConditionTest
  instanceVariableNames:'count age name'
  classVariableNames: ''
  poolDictionaries: ''
  category: nil.

ConditionTest class methodsFor: ''.
new
  |r|
  r := super new.
  r init.
  ^r.
!!

ConditionTest methodsFor: 'ini'.
init
  count := 10.
  age   := 30.
  name  := 'hellman'.
!!

ConditionTest methodsFor: ' if test '.
checkTest
  count := count + 1.
!!

ConditionTest methodsFor: 'print'.
printOn: stream
  ( count = 10 )
    ifTrue: [ 'count is 10' printNl ].
  ( age  =  29 )
    ifFalse: [ age printNl ].
  ( name = 'hellman' )
    ifTrue: [ 'name is hell' printNl ].
!!

Smalltalk at: #a put: (ConditionTest new).
a printNl
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

