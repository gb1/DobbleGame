defmodule Dobble.GameTest do
  use ExUnit.Case
  alias Dobble.Game

  test "setup a two player game" do
    %{
      player1_card: player1_card,
      player2_card: player2_card,
      dealer_card: dealer_card,
      deck: deck
    } = Game.new()

    assert length(player1_card) == 8
    assert length(player2_card) == 8
    assert length(dealer_card) == 8
    assert length(deck) == 54

    p1 = MapSet.new(player1_card)
    p2 = MapSet.new(player2_card)
    d = MapSet.new(dealer_card)

    assert MapSet.intersection(p1, p2) |> MapSet.size() == 1
    assert MapSet.intersection(p1, d) |> MapSet.size() == 1
    assert MapSet.intersection(p2, d) |> MapSet.size() == 1
  end

  test "make a correct guess" do

  end
end
