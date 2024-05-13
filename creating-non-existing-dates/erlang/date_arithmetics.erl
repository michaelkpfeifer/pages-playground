-module(date_arithmetics).

-export([examples/0]).

examples() ->
    %% Erlang valid date as tuple
    ValidDate = {2021, 1, 15},
    ValidDatePlus1 =
        calendar:gregorian_days_to_date(
          calendar:date_to_gregorian_days(ValidDate) + 1
        ),

    io:format("~p~n", [ValidDatePlus1]), % prints {2021,1,16}

    %% Erlang invalid date as tuple
    InvalidDate = {2021, 2, 30},
    try
        InvalidDatePlus1 =
            calendar:gregorian_days_to_date(
              calendar:date_to_gregorian_days(InvalidDate) + 1
            ),
        io:format("~p~n", [InvalidDatePlus1])
    catch
        error:Error -> io:format("~p~n", [Error]) % prints if_clause
    end.
