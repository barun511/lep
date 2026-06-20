defmodule Jun26 do

  def init(board) do
    GenServer.start_link(GameState, board, name: MyStack)
    board
  end

  def tick() do
    GenServer.call(MyStack, :get)
  end
end
