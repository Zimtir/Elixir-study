defmodule CommonTest do
  use ExUnit.Case
  doctest Common

  test "check on the string is palindrome" do
    assert Common.is_palindrome("Palindrome") == false
    assert Common.is_palindrome("Ololo") == true
    assert Common.is_palindrome("ololo") == true
    assert Common.is_palindrome("ZzZ") == true
    assert Common.is_palindrome("a") == true
  end
end
