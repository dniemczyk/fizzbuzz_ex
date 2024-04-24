defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "greets the world" do
    assert FizzBuzz.parse() == [1, 2, "Fizz"]
  end
end
