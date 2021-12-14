"i := (Interval from: 1 to: 100 by: 1) !
i printNl ! "
"1 to: 100 do: [:x| x printNl ] !"
1 to: 100 do: [:x| 
    ((x \\ 15) == 0)
    ifTrue: ['Fizzbuzz' printNl].
    ((x \\ 5) == 0)
    ifTrue: ['Buzz' printNl].
    ((x \\ 3) == 0)
    ifTrue: ['Fizz' printNl].
    (((x \\ 5) > 0) & ((x \\ 3) > 0) & ((x \\ 15) > 0))
    ifTrue: [x printNl].
 ] !
