-module(basic).
-export([another_factorial/1]).
-export([another_fibonacci/1]).
-export([words_in_string/1]).
-export([count_to_ten/0]).
-export([count_up/1]).
-export([responder/1]).

another_factorial(0) -> 1;
another_factorial(N) -> N * another_factorial(N - 1).

another_fibonacci(0) -> 1;
another_fibonacci(1) -> 1;
another_fibonacci(N) -> another_fibonacci(N - 1) + another_fibonacci(N - 2).

words_in_string("") -> 0;
words_in_string(Str) ->
  [_|Tail] = string:split(Str, " "),
  1 + words_in_string(Tail).

count_up(1) ->
  erlang:display(1),
  count_up(2);
count_up(10) -> erlang:display(10);
count_up(N) ->
  erlang:display(N),
  count_up(N + 1).


count_to_ten() -> count_up(1).

responder({error, Message}) -> Message;
responder(_) -> erlang:display("success").
