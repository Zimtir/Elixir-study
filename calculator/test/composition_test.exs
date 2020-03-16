defmodule CommpositionTest do
  use ExUnit.Case
  doctest Composition

  test "check of the composition by increment, double and multiple" do
    assert Composition.isd(2) == 18
    assert Composition.isd(5) == 72

    assert Composition.compose([
             &Composition.inc/1,
             &Composition.double/1,
             &Composition.double/1,
             &Composition.inc/1,
             &Composition.inc/1
           ]).(2) == 14
  end
end
