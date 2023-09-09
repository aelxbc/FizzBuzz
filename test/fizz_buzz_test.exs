defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "When a valid file is provided, returns the converted list" do
      expected_response =
        {:ok,
         [
           1,
           2,
           :fizz,
           4,
           :buzz,
           :fizz,
           7,
           8,
           :fizz,
           :buzz,
           11,
           :fizz,
           13,
           14,
           :fizzbuzz,
           16,
           17,
           :fizz,
           19,
           :buzz,
           :fizz,
           22,
           23,
           :fizz,
           :buzz,
           26,
           :fizz,
           28,
           29,
           :fizzbuzz,
           31,
           32,
           :fizz,
           34,
           :buzz,
           :fizz,
           37,
           38,
           :fizz,
           :buzz,
           41,
           :fizz,
           43,
           44,
           :fizzbuzz,
           46,
           47,
           :fizz
         ]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "When a invalid file is provided, returns an error" do
      assert FizzBuzz.build("invalid.txt") == {:error, "Error reading file: enoent"}
    end
  end
end
