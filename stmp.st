" ""
"


" if文的なもの""
"
true ifTrue: ['I am true.' displayNl].
true ifFalse: ['I am false.' displayNl].
(true ifTrue: [1] ifFalse: [0]) printNl.

" 論理積、論理和""
a := 10.
((a > 5) & (a < 20)) displayNl.
(a between: 5 and: 20) displayNl.

b := OrderedCollection new.
((b notEmpty) and: [(b at: 1) = 42]) displayNl.

b add: 42.
((b notEmpty) and: [(b at: 1) = 42]) displayNl.
"


" 真偽""
(true not) displayNl.
(1 < 2) displayNl.
(1 = 2) displayNl.
(1 ~= 2) displayNl.

a := 'abc'.
b := 'abc'.
(a = b) displayNl.
(a == b) displayNl.
(0 isMemberOf: SmallInteger) displayNl.
(0 isNil) displayNl.
(0 notNil) displayNl.
"


" マッチ""
s := 'hogefugafoobar'.

(s indexOfSubCollection: 'fuga') displayNl.
(s indexOfSubCollection: 'baz') displayNl.
(s startsWith: 'hogefuga') displayNl.
(s startsWith: 'fuga') displayNl.
(s endsWith: 'bar') displayNl.
"

" 文字列の分割置換""
('abcdef' copyFrom: 2) displayNl.
('abcdef' copyFrom: 2 to: 5) displayNl.
('abcdefabcdef' copyReplaceAll: 'def' with: '***') displayNl.
('x0xx12xxx345x' copyReplacingAllRegex: '[0-9]+' with: '*') displayNl.

('x0xx12xxx345x' copyReplacingAllRegex: '([0-9]+)' with: [:x |
    ArrayedCollection new: (x at: 1) size withAll: $*.
]) displayNl.

('abc def ghi' subStrings: $ ) displayNl.
('Alea jacta     est' tokenize: '\s+') displayNl.
(#('Alea' 'jacta' 'est') join) displayNl.
(#('Alea' 'jacta' 'est') join: ' ') displayNl.
"



" 制御文字など""
('ho',(Character tab asString),'ge') displayNl.
('ho',(String with: Character tab),'ge') displayNl.
('ho',(String with: (Character value: 64)),'ge') displayNl.
('ho',(String with: $@),'ge') displayNl.

a := #(72 101 108 108 111 44 32 119 111 114 108 100 33).
(String fromString: (a collect: [:x | Character value: x])) displayNl.
"


" 文字列""
('hoge') displayNl
('10 o''clock') displayNl
('foo','bar') displayNl
('everything = %1' % #(42)) displayNl
"



" 真偽値でソート""
({2. 1. 3} sorted: [:a :b | a > b]) displayNl.
"

" 配列""
a := Array new: 20.
(#(1 2 3 4 5)) displayNl.
(a := {1 + 2. 3 + 4. 5}) displayNl.
(a at: 3) displayNl.
(a at: 3 put: 100; yourself) displayNl.
({5. 2. 4. 8. 9. 1. 3. 7. 6. 0} sort) displayNl.

a := OrderedCollection new.
(a add: 10; add: 20; add: 30; yourself) displayNl.

a := {5. 2. 4. 8. 9. 1. 3. 7. 6. 0}.
a do: [:x | x printNl].
a doWithIndex: [:x :idx | ('%1 : %2' % {idx. x}) displayNl].
(a anySatisfy: [:x | x = 0]) displayNl.
(a count: [:x | x > 5]) displayNl.
(a select: [:x | x > 5]) displayNl.
(a inject: 0 into: [:x :y | x + y]) displayNl.

b := #(1 2 3 4 5).
(b fold: [:x :y | x lcm: y]) displayNl.
(b collect: [:x | x * 2]) displayNl.
(b copyFrom: 1 to: 3) displayNl.
"



" ブロックを使ってループ構造""
1 to: 5 do: [:x | x printNl].
3 timesRepeat: ['Hello, world!' displayNl].
"

" 除算は// ""
(10 / 3) displayNl.
(10 // 3) displayNl.
"

" クラスメソッド""
Object subclass: Hoge [
    Hoge class >> double: x [^x * 2]
    Hoge class >> const100 [^100]
].

(Hoge double: 100) displayNl.
(Hoge const100) displayNl.
"


" 宣言""
| a b |
a := 3.
b := 4.

a displayNl.
b displayNl
"


" 引数なしブロック""
a := [3+4]
(a value) displayNl
"


" 変数""
a := 20.

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


" 分岐""
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




" 演算子""
(((5+5)*2)+(9/3)) printNl
"


" 配列""
Smalltalk at: #x put: 0.
x := Array new: 20.
(x at: 1) printNl.
x at: 1 put: 99
(x at: 1) printNl
"



" 階上計算""
Integer extend [
    factorial [
        self = 0 ifTrue: [ ^1 ].
        self > 0 ifTrue: [ ^(self - 1) factorial * self ].
    ]
]

10 factorial printNl.
"

" 文字表示""
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

