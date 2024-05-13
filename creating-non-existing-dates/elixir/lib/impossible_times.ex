defmodule ImpossibleTimes do
  def examples do
    # Elixir DateTime.new/2 with valid input
    {:ok, date} = Date.new(2021, 1, 15)
    {:ok, time} = Time.new(8, 0, 0)
    valid_timestamp = DateTime.new(date, time)

    IO.inspect(valid_timestamp) # prints {:ok, ~U[2021-01-15 08:00:00Z]}
  end
end
