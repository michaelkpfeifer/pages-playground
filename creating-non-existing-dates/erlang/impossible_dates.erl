-module(impossible_dates).

-export([examples/0]).

examples() ->
    %% Erlang valid date as tuple
    ValidDate = {2021, 1, 15},

    io:format("~p~n", [ValidDate]), % prints {2021,1,15}

    %% Erlang invalid date as tuple
    InvalidDate = {2021, 2, 30},

    io:format("~p~n", [InvalidDate]). % prints {2021,2,30}
