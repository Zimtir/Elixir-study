defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "sum of the two integer numbers" do
    assert Calculator.sum(2, 2) == 4
    assert Calculator.sum(3, 5) == 8
    assert Calculator.sum(0, 0) == 0
    assert Calculator.sum(-1, 2) == 1
  end

  test "sum of the list with integer numbers" do
    assert Calculator.sum(:list, [0, 1, 2, 3, 4, 5]) == 15
    assert Calculator.sum(:list, [0, 1, 2, 3, 4]) == 10
    assert Calculator.sum(:list, [0, 1, 2, 3]) == 6
    assert Calculator.sum(:list, [0, 1, 2]) == 3
  end

  test "difference of the two integer numbers" do
    assert Calculator.difference(2, 2) == 0
    assert Calculator.difference(3, 5) == -2
    assert Calculator.difference(0, 0) == 0
    assert Calculator.difference(-1, 2) == -3
  end

  test "difference of the list with integer numbers" do
    assert Calculator.difference(:list, [0, 1, 2, 3, 4, 5]) == 3
    assert Calculator.difference(:list, [0, 1, 2, 3, 4]) == 2
    assert Calculator.difference(:list, [0, 1, 2, 3]) == 2
    assert Calculator.difference(:list, [0, 1, 2]) == 1
  end

  test "multiple of the list with integer numbers" do
    assert Calculator.multiple(:list, [0, 1, 2, 3, 4, 5]) == 0
    assert Calculator.multiple(:list, [0, 1, 2, 3, 4]) == 0
    assert Calculator.multiple(:list, [-1, 1, 2, 3]) == -6
    assert Calculator.multiple(:list, [10, -1, 11]) == -110
  end

  test "multiple of the two integer numbers" do
    assert Calculator.multiple(2, 2) == 4
    assert Calculator.multiple(3, 5) == 15
    assert Calculator.multiple(0, 0) == 0
    assert Calculator.multiple(-1, 2) == -2
  end
end
