% dupli([], _, []).
% dupli([Head|[]], N, Duplicated) :- .
% multiply(_, N, Multiplied) :- N <= 1, Multiplied is [].
% multiply(X, N, Multiplied) :- SmallN = N - 1, multiply(X, SmallN, Multiplied1), append([X], Multiplied1, Multiplied).
father(A, A).
isequal(A, A).
