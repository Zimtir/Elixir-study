defmodule CommpositionTest do
  use ExUnit.Case
  doctest Composition

  test "check on the string is palindrome" do
    assert Composition.isd().(2) == 18
    assert Composition.isd().(5) == 72

    assert Composition.compose([
             &Composition.inc/1,
             &Composition.double/1,
             &Composition.double/1,
             &Composition.inc/1,
             &Composition.inc/1
           ]).(2) == 14
  end
end
