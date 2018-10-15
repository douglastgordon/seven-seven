% reverses a list
my_reverse([], []).
my_reverse([X], [X]).
my_reverse([Head|Tail], Reversed) :- my_reverse(Tail, Reversed1), append(Reversed1, [Head], Reversed).

my_reverse([1,2,3], Reversed) % Reversed = [3,2,1] ?
