defmodule MyMapReduceTest do
  use ExUnit.Case
  doctest MyMapReduce

  test "Doubles each element in a list" do
    import MyMapReduce, only: [double: 1]

    assert_raise FunctionClauseError, fn ->
      double(2)
  end
    # test double

    assert double([]) == []
    assert double([1]) == [2]
    assert double([1, 2, 3, 5, 6]) == [2, 4, 6, 10, 12]
end
# test sum

    test "sum each element in a list" do
      import MyMapReduce, only: [sum: 1]
        assert_raise FunctionClauseError, fn ->
        sum(2)
    end

    assert sum([]) == 0
    assert sum([1, 2, 5]) == 8
    assert sum([1, 2, 3, 5, 6]) == 17
  end

  # test sum

  test "sum list" do
    import MyMapReduce, only: [sum: 1]
    assert_raise FunctionClauseError, fn ->
      sum(2)
    end

    assert sum([]) == 0
    assert sum([1, 2, 5]) == 8
    assert sum([1, 2, 3, 5, 6]) == 17
  end

# test reduce

  test "reduce list" do
    import MyMapReduce, only: [reduce: 3]
    assert_raise FunctionClauseError, fn ->
      reduce(3, 0, "")
    end

    assert reduce([], 0, &(&1 + &2)) == 0
    assert reduce([1, 2, 5], 0, &(&1 + &2)) == 8
    assert reduce([1, 2, 3, 5, 6], 0, &(&1 + &2)) == 17
  end
end
