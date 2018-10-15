% finds the number of elements in a list
count([], 0).
count([_|[]], 1).
count([_|Tail], Count) :- count(Tail, SmallerCount), Count is 1 + SmallerCount.

 count([1,4,3,234,51,5], Count). % Count = 6
