defmodule Common do
  def isPalindrome(str) do
    String.split(str, "")
    |> Enum.reverse()
    |> Enum.join("") == str
  end
end
