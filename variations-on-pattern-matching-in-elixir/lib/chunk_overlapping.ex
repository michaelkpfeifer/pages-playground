defmodule ChunkOverlapping do
  def add_overlapping([e1, e2 | rest]) do
    [e1 + e2 | add_overlapping([e2 | rest])]
  end

  def add_overlapping([_]) do
    []
  end

  def add_overlapping([]) do
    []
  end

  def run do
    # prints [3, 5, 7, 9]
    IO.inspect(ChunkOverlapping.add_overlapping([1, 2, 3, 4, 5]))
  end
end
