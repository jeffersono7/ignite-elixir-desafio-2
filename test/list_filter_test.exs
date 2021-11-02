defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "when empty list, returns 0" do
      assert 0 == ListFilter.call([])
    end

    test "when given list with 3 odd numbers, returns 3" do
      assert 3 == ListFilter.call(["1", "2", "3", "5", "jefferson"])
    end
  end
end
