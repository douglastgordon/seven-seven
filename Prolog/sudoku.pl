valid([]).
valid([Head|Tail]) :-
  fd_all_different(Head),
  valid(Tail).

sudoku(Sudoku, Solution) :-
  Sudoku = Solution,
  Sudoku = [C11, C12, C13, C14,
            C21, C22, C23, C24,
            C31, C32, C33, C34,
            C41, C42, C43, C44],
  Row1 = [C11, C12, C13, C14],
  Row2 = [C21, C22, C23, C24],
  Row3 = [C31, C32, C33, C34],
  Row4 = [C41, C42, C43, C44],
  Col1 = [C11, C21, C31, C41],
  Col2 = [C12, C22, C32, C42],
  Col3 = [C13, C23, C33, C43],
  Col4 = [C14, C24, C34, C44],
  Box1 = [C11, C12, C21, C22],
  Box2 = [C13, C14, C23, C24],
  Box3 = [C31, C32, C41, C42],
  Box4 = [C33, C34, C43, C44],
  fd_domain(Sudoku, 1, 4),
  valid([Row1, Row2, Row3, Row4, Col1, Col2, Col3, Col4, Box1, Box2, Box3, Box4]).

sudoku([_, _, 2, 3,
        _, _, _, _,
        _, _, _, _,
        3, 4, _, _],
        Solution).
