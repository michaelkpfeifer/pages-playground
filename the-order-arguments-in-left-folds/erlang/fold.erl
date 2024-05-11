-module(fold).

-export([run/0]).

rev() ->
    Collection = [1, 2, 3, 4, 5],
    InitialAccumulator = [],
    CombiningFunction =
        fun(CurrentItem, CurrentAccumulator) ->
                [ CurrentItem | CurrentAccumulator ]
        end,

    lists:foldl(
      CombiningFunction,
      InitialAccumulator,
      Collection
     ).

run() ->
    io:format("~p~n", [rev()]). % prints [5,4,3,2,1]
