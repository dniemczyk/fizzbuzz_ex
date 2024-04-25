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
    1..num
    |> Enum.map(&fizz/1)
    |> Enum.map(&buzz/1)
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
  other cases returns the input number.

  ## Examples

      iex> FizzBuzz.fizz(3)
      "Fizz"

      iex> FizzBuzz.fizz(5)
      5
  """
  def fizz(num) when is_number(num) do
    if rem(num, 3) == 0, do: "Fizz", else: num
  end

  def fizz(x) do
    x
  end

  def buzz(num, x) when is_number(num) do
    if rem(x, 5) == 0 do
      buzz(num)
    else
      num
    end
  end

  def buzz(str, x) when is_bitstring(str) do
    if rem(x, 5) == 0 do
      str <> "Buzz"
    else
      str
    end
  end


  @doc """
  Returns the string "Fizz" if the number is divisible by 3. In all
  other cases returns the input number.

  ## Examples

      iex> FizzBuzz.buzz(5)
      "Buzz"

      iex> FizzBuzz.buzz(3)
      3
  """
  def buzz(num) when is_number(num) do
    if rem(num, 5) == 0, do: "Buzz", else: num
  end

  def buzz(x) do
    x
  end
end
