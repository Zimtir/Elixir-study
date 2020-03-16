defmodule Common do
  def is_palindrome(str) when is_binary(str) do
    reverse(str) == downcase(str)
  end

  def reverse(string) when is_binary(string) do
    string
    |> downcase()
    |> String.split("")
    |> Enum.reverse()
    |> Enum.join("")
  end

  def downcase(string) when is_binary(string) do
    string |> String.downcase()
  end
end
