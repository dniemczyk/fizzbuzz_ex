defmodule FizzBuzzTest do
  use ExUnit.Case, async: true
  doctest FizzBuzz

  test "Default parse creates a 3 elements list" do
    assert FizzBuzz.parse() == [1, 2, "Fizz"]
  end

  describe "FizzBuzz.Fizz/1" do
    test "always returns a number when provided an integer not divisible by 3" do
      assert FizzBuzz.fizz(5) == 5
      assert FizzBuzz.fizz(124) == 124
      assert FizzBuzz.fizz(1234) == 1234
    end

    test "returns the string \"Fizz\" if provided with an number that is divisible by 3" do
      assert FizzBuzz.fizz(3) == "Fizz"
      assert FizzBuzz.fizz(333) == "Fizz"
      assert FizzBuzz.fizz(12345) == "Fizz"
    end
  end
end
