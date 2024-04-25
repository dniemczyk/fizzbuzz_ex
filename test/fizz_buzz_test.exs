defmodule FizzBuzzTest do
  use ExUnit.Case, async: true
  doctest FizzBuzz

  describe "FizzBuzz.parse/0" do
    test "creates a 3 elements list" do
      assert FizzBuzz.parse() == [1, 2, "Fizz"]
    end
  end

  describe "FizzBuzz.parse/1" do
    test "creates a list with \"Fizz\" in the list" do
      assert FizzBuzz.parse(4) == [1, 2, "Fizz", 4]
    end

    test "creates a list with \"Buzz\" in the list" do
      assert FizzBuzz.parse(5) == [1, 2, "Fizz", 4, "Buzz"]
    end

    test "creates a list with \"FizzBuzz\" in the list" do
      assert FizzBuzz.parse(15) ==
        [1, 2, "Fizz", 4, "Buzz" ] ++
        ["Fizz", 7, 8, "Fizz", "Buzz"] ++
        [11, "Fizz", 13, 14, "FizzBuzz"]
    end
  end

  describe "FizzBuzz.fizz/1" do
    test "always returns a number when provided an integer not divisible by 3" do
      assert FizzBuzz.fizz(5) == 5
      assert FizzBuzz.fizz(124) == 124
      assert FizzBuzz.fizz(1234) == 1234
    end

    test "returns the string \"Fizz\" if provided with an number that is divisible by 3" do
      assert FizzBuzz.fizz(3) == "Fizz"
      assert FizzBuzz.fizz(333) == "Fizz"
      assert FizzBuzz.fizz(12_345) == "Fizz"
    end
  end

  describe "FizzBuzz.fizz/2" do
    test "always returns first value if second is not divisible by 3" do
      assert FizzBuzz.fizz(5, 5) == 5
      assert FizzBuzz.fizz("Buzz", 10) == "Buzz"
      assert FizzBuzz.fizz("Fizz", 14) == "Fizz"
    end

    test "returns the string \"Fizz\" or appends it when second is divisible by 3" do
      assert FizzBuzz.fizz(3, 3) == "Fizz"
      assert FizzBuzz.fizz(5, 3) == 5
      assert FizzBuzz.fizz("Buzz", 33) == "BuzzFizz"
      assert FizzBuzz.fizz("Fizz", 333) == "FizzFizz"
    end
  end

  describe "FizzBuzz.buzz/1" do
    test "always returns a number when provided an integer not divisible by 5" do
      assert FizzBuzz.buzz(3) == 3
      assert FizzBuzz.buzz(123) == 123
      assert FizzBuzz.buzz(1234) == 1234
    end

    test "returns the string \"Buzz\" if provided with an number that is divisible by 5" do
      assert FizzBuzz.buzz(5) == "Buzz"
      assert FizzBuzz.buzz(335) == "Buzz"
      assert FizzBuzz.buzz(12_345) == "Buzz"
    end

    test "always returns a string without changing it" do
      assert FizzBuzz.buzz("Fizz") == "Fizz"
      assert FizzBuzz.buzz("Buzz") == "Buzz"
      assert FizzBuzz.buzz("abcd") == "abcd"
    end
  end

  describe "FizzBuzz.buzz/2" do
    test "always returns first value if second is not divisible by 5" do
      assert FizzBuzz.buzz(3, 3) == 3
      assert FizzBuzz.buzz("Fizz", 11) == "Fizz"
      assert FizzBuzz.buzz("Buzz", 14) == "Buzz"
    end

    test "returns the string \"Buzz\" or appends it when second is divisible by 5" do
      assert FizzBuzz.buzz(3, 5) == 3
      assert FizzBuzz.buzz(5, 5) == "Buzz"
      assert FizzBuzz.buzz("Buzz", 55) == "BuzzBuzz"
      assert FizzBuzz.buzz("Fizz", 555) == "FizzBuzz"
    end
  end
end
