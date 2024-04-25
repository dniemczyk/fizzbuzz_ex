defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

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

  def fizz(num, x) when is_number(num) do
    if rem(x, 3) == 0 do
      fizz(num)
    else
      num
    end
  end

  def fizz(str, x) when is_bitstring(str) do
    if rem(x, 3) == 0 do
      str <> "Fizz"
    else
      str
    end
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
  def fizz(num) when is_number(num) do
    if rem(num, 3) == 0, do: "Fizz", else: num
  end

  def fizz(x) when is_tuple(x) do
    first = elem(x, 0)
    second = elem(x, 1)

    {fizz(first, second), second}
  end

  def fizz(x) do
    x
  end

  def buzz(num, x) when is_number(num) do
    if rem(x, 5) == 0, do: buzz(num), else: num
  end

  def buzz(str, x) when is_bitstring(str) do
    if rem(x, 5) == 0, do: str <> "Buzz", else: str
  end

  @doc """
  Returns the string "Fizz" if the number is divisible by 3. In all
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
  def buzz(num) when is_number(num) do
    if rem(num, 5) == 0, do: "Buzz", else: num
  end

  def buzz(x) when is_tuple(x) do
    first = elem(x, 0)
    second = elem(x, 1)

    {buzz(first, second), second}
  end


  def buzz(x) do
    x
  end
end
