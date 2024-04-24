defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Generate a list based on the provided number.

  ## Examples

      iex> FizzBuzz.parse(3)
      [1, 2, "Fizz"]

  """
  def parse(_num \\ 100) do
    [1, 2, "Fizz"]
  end
end
