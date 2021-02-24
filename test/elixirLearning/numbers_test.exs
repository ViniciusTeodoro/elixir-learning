defmodule ElixirLearning.NumbersTest do
  use ExUnit.Case

  alias ElixirLearning.Numbers

  describe "sum_from_file/1" do
    test "where there is a file with the given name, returns the sums of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 45}}

      assert response == expected_response
    end
    test "where there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("whatever")

      expected_response = {:error, %{message: "Invalid File!"}}

      assert response == expected_response
    end
  end

end
