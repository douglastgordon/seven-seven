% Finds penultimate element of list
penultimate([Head|[_|[]]], Head).
penultimate([_|Tail], Last) :- penultimate(Tail, Last).

penultimate([5,2,4,1,123,3,1,2], What). % Last = 1
