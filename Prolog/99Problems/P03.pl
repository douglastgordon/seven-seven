% finds kth element of list
kth_element([Head|_], 1, Head).
kth_element([_|Tail], K, Element) :- KMinus1 is K - 1, kth_element(Tail, KMinus1, Element).

kth_element([1,4,3,5,3,23], 3, Kth). % Kth = 3
