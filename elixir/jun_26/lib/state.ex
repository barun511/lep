defmodule GameState do
  use GenServer

  @impl true
  def init(board) do
    {:ok, board}
  end

  @impl true
  def handle_call(:get, _from, board) do
    {:reply, board, board}
  end

  @impl true
  def handle_call(:tick, _from, board) do
    row_length = length(board)
    [first_row, _rest] = board
    column_length = length(first_row)
    for i <- Enum.to_list(1..(row_length-1)) do

    end
  end
end
