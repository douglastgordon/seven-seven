compress([], []).
compress([X], [X]).
compress([X|[X|Xs]], Compressed) :- append([X], Xs, Compressed1), compress(Compressed1, Compressed).
compress([X|[Y|Xs]], Compressed) :- append([Y], Xs, Sublist), compress(Sublist, Compressed1), append([X], Compressed1, Compressed).
