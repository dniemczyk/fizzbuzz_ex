defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  require ModuloToStr

  ModuloToStr.defn("Fizz", 3)

  ModuloToStr.defn("Buzz", 5)

  @doc """
  Generate a list based on the provided number.

  ## Examples

      iex> FizzBuzz.parse(7)
      [1, 2, "Fizz", 4, "Buzz", "Fizz", 7]

  """
  def parse(num \\ 3) do
    fizzbuzzed_numbers = 1..num

    fizzbuzzed_numbers
    |> Enum.map(fn x -> {x, x} end)
    |> Enum.map(&fizz/1)
    |> Enum.map(&buzz/1)
    |> Enum.map(fn x -> elem(x, 0) end)
  end
end
