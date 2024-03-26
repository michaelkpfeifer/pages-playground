defmodule Reduce do
  def rev do
    collection = [1, 2, 3, 4, 5]
    initial_accumulator = []

    combining_function = fn current_item, current_accumulator ->
      [current_item | current_accumulator]
    end

    Enum.reduce(
      collection,
      initial_accumulator,
      combining_function
    )
  end

  def run do
    IO.inspect(rev())
  end
end
