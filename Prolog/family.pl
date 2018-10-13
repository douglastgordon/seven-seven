father(jeff, douglas).
father(jeff, sarah).
father(jeff, claire).
father(irving, jeff).

ancestor(X, Y) :- father(X, Y).
ancestor(X, Y) :-
  father(X, Z), ancestor(Z, Y).
