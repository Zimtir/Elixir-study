defmodule Composition do
  def inc(x), do: Calculator.sum(x, 1)

  def square(x), do: Calculator.square(x)

  def double(x), do: Calculator.multiple(x, 2)

  def compose(function_list) do
    fn input ->
      Enum.reduce(function_list, input, fn function, acc ->
        function.(acc)
      end)
    end
  end

  def isd(val) do
    compose([&inc/1, &square/1, &double/1]).(val)
  end
end
