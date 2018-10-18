-module(doctor).
-export([loop/0]).

loop() ->
  process_flag(trap_exit, true), % receives exit messages
  receive
    new ->
      io:format("creating new translator process~n"),
      register(translator,  spawn_link(fun translate:loop/0)),
      loop();
    kill ->
      io:format("I'm dying~n"),
      exit("self destruct");
    {'EXIT', From, Reason} ->
      io:format("exiting process ~p because ~p~n ", [From, Reason]),
      io:format("process name is ~p, and self is ~p - process == self ~p~n", [From, self(), From == self()]),
      self() ! new,
      loop()
  end.
