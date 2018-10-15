% valid([]).
% valid([Head|Tail]) :- one_queen(Head), valid(Tail).
%
% no_queens([]).
% % no_queen([Head|[]]) :- \+(Head = q).
% no_queens([Head|Tail]) :- \+(Head = q), no_queens(Tail).
%
% % one_queen([]).
% one_queen([q|[]]).
% one_queen([q|Tail]) :- no_queens(Tail).
% one_queen([_|Tail]) :- one_queen(Tail).
%
% eight_queens(Solution) :-
%   Solution = [C11, C12, C13, C14, C15, C16, C17, C18,
%               C21, C22, C23, C24, C25, C26, C27, C28,
%               C31, C32, C33, C34, C35, C36, C37, C38,
%               C41, C42, C43, C44, C45, C46, C47, C48,
%               C51, C52, C53, C54, C55, C56, C57, C58,
%               C61, C62, C63, C64, C65, C66, C67, C68,
%               C71, C72, C73, C74, C75, C76, C77, C78,
%               C81, C82, C83, C84, C85, C86, C87, C88],
%   Diag1 = [C21, C12],
%   Diag2 = [C31, C22, C13],
%   Diag2 = [C41, C32, C23, C14],
%   Diag3 = [C51, C42, C33, C24, C15],
%   Diag4 = [C61, C52, C43, C34, C25, C16],
%   Diag5 = [C71, C62, C53, C44, C35, C26, C17],
%   Diag6 = [C81, C72, C63, C54, C45, C36, C27, C18],
%   Diag7 = [C82, C73, C64, C55, C46, C37, C28],
%   Diag8 = [C83, C74, C65, C56, C47, C38],
%   Diag9 = [C84, C75, C66, C57, C48],
%   Diag10 = [C85, C76, C67, C58],
%   Diag11 = [C86, C77, C68],
%   Diag12 = [C87, C78],
%   Diag13 = [C71, C82],
%   Diag14 = [C61, C72, C83],
%   Diag15 = [C51, C62, C73, C84],
%   Diag16 = [C41, C52, C63, C74, C85],
%   Diag17 = [C31, C42, C53, C64, C75, C86],
%   Diag18 = [C21, C32, C43, C54, C65, C76, C87],
%   Diag19 = [C11, C22, C33, C44, C55, C66, C77, C88],
%   Diag20 = [C12, C23, C34, C45, C56, C67, C78],
%   Diag21 = [C13, C24, C35, C46, C57, C68],
%   Diag22 = [C14, C25, C36, C47, C58],
%   Diag23 = [C15, C26, C37, C48],
%   Diag24 = [C16, C27, C38],
%   Diag25 = [C17, C28],
%   Row1 = [C11, C12, C13, C14, C15, C16, C17, C18, C19],
%   Row2 = [C21, C22, C23, C24, C25, C26, C27, C28, C29],
%   Row3 = [C31, C32, C33, C34, C35, C36, C37, C38, C39],
%   Row4 = [C41, C42, C43, C44, C45, C46, C47, C48, C49],
%   Row5 = [C51, C52, C53, C54, C55, C56, C57, C58, C59],
%   Row6 = [C61, C62, C63, C64, C65, C66, C67, C68, C69],
%   Row7 = [C71, C72, C73, C74, C75, C76, C77, C78, C79],
%   Row8 = [C81, C82, C83, C84, C85, C86, C87, C88, C89],
%   Row9 = [C91, C92, C93, C94, C95, C96, C97, C98, C99],
%   Col1 = [C11, C21, C31, C41, C51, C61, C71, C81, C91],
%   Col2 = [C12, C22, C32, C42, C52, C62, C72, C82, C92],
%   Col3 = [C13, C23, C33, C43, C53, C63, C73, C83, C93],
%   Col4 = [C14, C24, C34, C44, C54, C64, C74, C84, C94],
%   Col5 = [C15, C25, C35, C45, C55, C65, C75, C85, C95],
%   Col6 = [C16, C26, C36, C46, C56, C66, C76, C86, C96],
%   Col7 = [C17, C27, C37, C47, C57, C67, C77, C87, C97],
%   Col8 = [C18, C28, C38, C48, C58, C68, C78, C88, C98],
%   Col9 = [C19, C29, C39, C49, C59, C69, C79, C89, C99],
%   valid([Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8, Row9, Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8, Col9, Diag1, Diag2, Diag3, Diag4, Diag5, Diag6, Diag7, Diag8, Diag9, Diag10, Diag11, Diag12, Diag13, Diag14, Diag15, Diag16, Diag17, Diag18, Diag19, Diag20, Diag21, Diag22, Diag23, Diag24, Diag25]).
