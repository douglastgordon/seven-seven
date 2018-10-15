% Finds last element of list
my_last([Head], Head).
my_last([_|Tail], Last) :- my_last(Tail, Last).


my_last([5,2,4,1,123,3,1,2], Last). % Last = 2
