% flattens list
my_flatten([], []).
my_flatten([Head|Tail], Flattened) :- (\+ is_list(Head)), my_flatten(Tail, Flattened1), append([Head], Flattened1, Flattened).
my_flatten([Head|Tail], Flattened) :- is_list(Head), append(Head, Tail, Flattened1), my_flatten(Flattened1, Flattened).

% Hint: Use the predefined predicates is_list/1 and append/3
