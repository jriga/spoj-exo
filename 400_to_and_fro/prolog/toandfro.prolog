toandfro :- 			read(Col),toandfro(Col).
toandfro(0) :- 		halt.
toandfro(Col) :- 	read(Line), decipher(Col,Line, Sent), format('~w~n',[Sent]), toandfro.

decipher(Col,Line, Sent) :- find(Col,Col,Line,[], Sent).

find(0,_,_,Acc, Sent) :- flatten(Acc,L),atom_chars(Sent, L).
find(Level,Col,Line,Acc, Sent) :- 
	atom_chars(Line,ListChar),
	get_level(Level,Col,ListChar, H),
	Sublevel is Level - 1,
	find(Sublevel,Col,Line,[H|Acc], Sent).

get_level(0,_,_,[]).
get_level(Level,Col,List, Line) :- get_level(Level,Col,List,1, [], Line).
get_level(_,_,[],_, Acc, Line) :- flatten(Acc,Line).

get_level(Level,Col,List,Side, Acc, Line) :-
	split(List,Col, Left, Right),
	index(Side,Level,Col, Index),
	nth1(Index,Left,Char),
	NewSide is Side * -1,
	get_level(Level,Col,Right,NewSide,[Acc|Char], Line).

index(Side,Level,Col, Index) :- Side = 1 -> Index = Level; Index is Col - Level + 1.

split(List,Index, Left, Right) :- append(Left, Right, List), length(Left,Index).

/* Auto load */
:- toandfro.