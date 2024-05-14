defmodule ChunkConsecutive do
  def add_consecutive([e1, e2 | rest]) do
    [e1 + e2 | add_consecutive(rest)]
  end

  def add_consecutive([_]) do
    []
  end

  def add_consecutive([]) do
    []
  end

  def run do
    # prints [3, 7]
    IO.inspect(ChunkConsecutive.add_consecutive([1, 2, 3, 4, 5]))
  end
end
