defmodule ChunkUsingEnum do
  def sum_consecutive(list) do
    Enum.chunk_every(list, 2, 2, :discard)
    |> Enum.map(fn [fst, lst] -> fst + lst end)
  end

  def sum_overlapping(list) do
    Enum.chunk_every(list, 2, 1, :discard)
    |> Enum.map(fn [fst, lst] -> fst + lst end)
  end

  def run_sum_consecutive do
    # prints [3, 7]
    IO.inspect(ChunkUsingEnum.sum_consecutive([1, 2, 3, 4, 5]))
  end

  def run_sum_overlapping do
    # prints [3, 5, 7, 9]
    IO.inspect(ChunkUsingEnum.sum_overlapping([1, 2, 3, 4, 5]))
  end
end
