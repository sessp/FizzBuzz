:- initialization(main).
main :- write('Fizzbuzz Prolog Program'), nl, getinput.
/*facts*/
fib(1,1).
fib(0,0).
/*rules*/
getinput :-
	/*simple input and output*/
	write('How many numbers would you like to perform fizzbuzz on?'),
	read(X),
	write('Calculating Fizzbuzz of '), 
	write(X), nl,
	loop(X). 
loop(1001) :- write('End of Program'), nl, halt.
loop(0) :- write('0 is not a fizzbuzz number :P'), nl, halt.
loop(X) :-	
	( (X > 1001;X < -1) -> write(' Input an int between 1-1000 '), loop(1001) ; (mod(X,15) =:= 0) -> write(' fizzbuzz ') ; (mod(X,5) =:= 0) -> write(' buzz ') ; (mod(X,3) =:= 0) -> write(' fizz ')  ; write(' '),write(X),write(' ')),
	N is X + 1,
	loop(N).