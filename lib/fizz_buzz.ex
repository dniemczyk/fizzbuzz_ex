defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  require ModuloToStr

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

  @doc """
  Returns the string "Fizz" if the number is divisible by 3. In all
  other cases returns the input number. If provided with a tuple
  returns for combining the fizz function in a railway style map.

  ## Examples

      iex> FizzBuzz.fizz(3)
      "Fizz"

      iex> FizzBuzz.fizz(5)
      5

      iex> FizzBuzz.fizz({3, 3})
      {"Fizz", 3}

      iex> FizzBuzz.fizz({5, 5})
      {5, 5}

      iex> FizzBuzz.fizz({"Buzz", 3})
      {"BuzzFizz", 3}

      iex> FizzBuzz.fizz({"Buzz", 5})
      {"Buzz", 5}
  """
  ModuloToStr.defn("Fizz", 3)

  @doc """
  Returns the string "Buzz" if the number is divisible by 5. In all
  other cases returns the input number.

  ## Examples

      iex> FizzBuzz.buzz(5)
      "Buzz"

      iex> FizzBuzz.buzz(3)
      3

      iex> FizzBuzz.buzz({3, 3})
      {3, 3}

      iex> FizzBuzz.buzz({5, 5})
      {"Buzz", 5}

      iex> FizzBuzz.buzz({"Buzz", 3})
      {"Buzz", 3}

      iex> FizzBuzz.buzz({"Buzz", 5})
      {"BuzzBuzz", 5}
  """
  ModuloToStr.defn("Buzz", 5)
end
