pack([], []).
pack([X], [X]).
pack([X|[Y|[]]], [[X], [Y]]).
pack([[X|Xs]|[X|Ys]], Packed) :- append([X, X], Xs, Sublist), append([Sublist], Ys, Subpacked), pack(Subpacked, Packed).
pack([[X|Xs]|[Y|Ys]], Packed) :- append([X], Xs, Sublist1), append([Y], Ys, Sublist2), pack(Sublist2, Subpacked), append([Sublist1], Subpacked, Packed).

pack([X|[X|Xs]], Packed) :- append([[X, X]], Xs, Subpacked), pack(Subpacked, Packed).
pack([X|[Y|Ys]], Packed) :- append([Y], Ys, Sublist), pack(Sublist, Subpacked), append([[X]], Subpacked, Packed).
