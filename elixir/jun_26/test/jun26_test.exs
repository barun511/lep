defmodule Jun26Test do
  use ExUnit.Case
  doctest Jun26

  test "hello pls fix" do
    board = Jun26.initBoard([[0, 0], [0, 0]])
    assert board == [[0, 0], [0, 0]]

    board = Jun26.initBoard([[0, 1], [0, 1]])
    assert board == [[0, 1], [0, 1]]

    board = Jun26.initBoard([[0, 2], [0, 2]])
    assert board == [[0, 2], [0, 2]]
  end
end
