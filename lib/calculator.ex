defmodule Calculator do
  @moduledoc """
  Calculator tool for operations like sum, multiple, factorial.
  """

  @doc """
  sum(:list)

  ## Examples

      iex> Calculator.sum(:list, [0, 1, 2, 3, 4, 5])
      15

  """
  def sum(:list, arr) do
    Enum.reduce(arr, 0, fn x, acc ->
      sum(x, acc)
    end)
  end

  @doc """
  sum

  ## Examples

      iex> Calculator.sum(2, 2)
      4

  """

  def sum(a, b) do
    a + b
  end

  @doc """
  difference(:list)

  ## Examples

      iex> Calculator.difference(:list, [0, 1, 2, 3, 4, 5])
      3

  """

  def difference(:list, arr) do
    Enum.reduce(arr, 0, fn x, acc ->
      difference(x, acc)
    end)
  end

  @doc """
  difference

  ## Examples

      iex> Calculator.difference(2, 2)
      0

  """
  def difference(a, b) do
    a - b
  end

  @doc """
  multiple(:list)

  ## Examples

      iex> Calculator.multiple(:list, [0, 1, 2, 3, 4, 5])
      0

  """
  def multiple(:list, arr) do
    Enum.reduce(arr, 1, fn x, acc ->
      multiple(x, acc)
    end)
  end

  @doc """
  multiple

  ## Examples

      iex> Calculator.multiple(3, 5)
      15

  """
  def multiple(a, b) do
    a * b
  end
end

Calculator.sum(2, 2)
|> IO.puts()

Calculator.sum(:list, [0, 1, 2, 3, 4, 5])
|> IO.puts()

Calculator.difference(2, 2)
|> IO.puts()

Calculator.difference(:list, [0, 1, 2, 3, 4, 5])
|> IO.puts()

Calculator.multiple(3, 5)
|> IO.puts()

Calculator.multiple(:list, [0, 1, 2, 3, 4, 5])
|> IO.puts()
