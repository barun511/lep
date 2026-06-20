defmodule Jun26Test do
  use ExUnit.Case
  test "greets the world" do
    board = Jun26.initBoard([[0, 0], [0, 0]])
    assert board == [[0, 0], [0, 0]]
  end
end
