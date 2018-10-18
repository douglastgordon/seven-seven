-module(functional).
-export([get_quality/2]).
-export([shopping_list/1]).
-export([tictactoe/1]).

get_quality(List, Keyword) -> [Value || {Name, Value} <- List, Name == Keyword].
% functional:get_quality([{erlang, "a functional language"}, {ruby, "an OO language"}, {io, "a prototypal language"}], ruby).


shopping_list(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
%functional:shopping_list([{apples, 10, 0.2}, {milk, 1, 2}, {eggs, 12, 0.5}]).
