pack([[X|Xs]|[X|Ys]], Packed) :- append([X, X], Xs, Sublist), append([Sublist], Ys, Subpacked), pack(Subpacked, Packed).
pack([X|[X|Xs]], Packed) :- append([[X, X]], Xs, Subpacked), pack(Subpacked, Packed).
pack([[X|[Y|Ys]], Packed) :- append([Y], Ys, Sublist), pack(Sublist, Subpacked), append([[X]], Subpacked, Packed).
