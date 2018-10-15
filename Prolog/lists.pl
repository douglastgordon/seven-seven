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

sorted([], []).
sorted([X], [X]).
sorted(List, Sorted) :-
  halve(List, L1, L2),
  sorted(L1, Sorted1), sorted(L2, Sorted2),
  merged(Sorted1, Sorted2, Sorted).


merged([],L,L).
merged(L,[],L).
merged([X|T1],[Y|T2],[X|T]) :- X =< Y, merged(T1, [Y|T2], T).
merged([X|T1],[Y|T2],[Y|T]) :- X > Y, merged([X|T1], T2, T).

halve(L,A,B):-hv(L,[],A,B).

hv(L,L,[],L).      % for lists of even length
hv(L,[_|L],[],L).  % for lists of odd length
hv([H|T],Acc,[H|L],B):-hv(T,[_|Acc],L,B).
