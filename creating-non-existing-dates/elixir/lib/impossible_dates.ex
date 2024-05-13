defmodule ImpossibleDates do
  def examples do
    # Elixir Date.new/3 with valid input
    valid_date = Date.new(2021, 1, 15)

    IO.inspect(valid_date) # prints {:ok, ~D[2021-01-15]}

    # Elixir Date.new/3 with invalid input
    invalid_date = Date.new(2021, 2, 30)

    IO.inspect(invalid_date) # prints {:error, :invalid_date}
  end
end
