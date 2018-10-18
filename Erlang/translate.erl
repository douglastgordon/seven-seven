-module(translate).
-export([loop/0]).

loop() ->
  receive
    "maison" ->
      io:format("house"),
      loop();
    "blanc" ->
      io:format("white"),
      loop();
    _ ->
      % io:format("I don't understand - killing process"),
      exit({"word not in dictionary"})
  end.

% translate(To, Word) ->
%   To ! {self(), Word},
%   receive
%     Translation -> Translation
%   end.
