dupli([], []).
dupli([X], [X, X]).
dupli([X|Xs], Duplicated) :- dupli(Xs, Duplicated1), append([X, X], Duplicated1, Duplicated).
