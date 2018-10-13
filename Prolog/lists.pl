count(0, []).
count(Total, [_|Tail]) :- count(TailCount, Tail), Total is TailCount + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(TailTotal, Tail), Total is TailTotal + Head.

average(0, []).
average(Average, List) :- sum(Sum, List), count(Total, List), Average is Sum / Total.

concatenate([], List, List).
% concatenate([Head|[]], List, [Head|List]).
% concatenate([Head|[Second|[]]], List, [Head|[Second|List])
concatenate([Head|Tail], List, [Head|Tail2]) :- concatenate(Tail, List, Tail2).

fibonacci(0, 1) :- !.
fibonacci(1, 1) :- !.
fibonacci(N, Value) :- N1 is N - 1, N2 is N - 2, fibonacci(N1, OneLess), fibonacci(N2, TwoLess), Value is OneLess + TwoLess.

factorial(1, 1) :- !.
factorial(N, Value) :- N1 is N - 1, factorial(N1, SmallerValue), Value is N * SmallerValue.

myReverse([], []).
myReverse([Head|[]], [Head]).
myReverse([Head|Tail], ReversedList) :- myReverse(Tail, SmallerReversedList), append(SmallerReversedList, [Head], ReversedList).

mySmallest([Head|[]], Head).
mySmallest([Head|[Second|[]]], Smaller) :- Head > Second, Smaller is Second.
mySmallest([Head|[Second|[]]], Smaller) :- Head =< Second, Smaller is Head.
mySmallest([Head|Tail], Smallest) :- mySmallest(Tail, Smaller), mySmallest([Smaller, Head], Smallest).

mySort([Head|[]], [Head]).
mySort([Head,[Second|[]]], Sorted) :- Second < Head, Sorted is [Second, Head].
mySort([Head,[Second|[]]], Sorted) :- Second >= Head, Sorted is [Head, Second].
mySort([Head, Tail], Sorted) :-
