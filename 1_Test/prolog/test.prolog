go :- read(Number),go(Number).
go(42) :- halt.
go(Number) :- write(Number),nl,go.

:-go.
