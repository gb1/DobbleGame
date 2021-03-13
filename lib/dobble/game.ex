defmodule Dobble.Game do
  alias Dobble.Game
  alias Dobble.Cards

  defstruct player1_card: [], player2_card: [], dealer_card: [], deck: []

  def new do
    [player1_card, player2_card | [dealer_card | deck]] =
      Cards.cards()
      |> Cards.set_emojis()
      |> Enum.shuffle()

    %Game{
      player1_card: player1_card,
      player2_card: player2_card,
      dealer_card: dealer_card,
      deck: deck
    }
  end

  def guess(
        %{
          player1_card: player1_card,
          player2_card: player2_card,
          dealer_card: dealer_card,
          deck: [next | deck]
        } = state,
        guess,
        player
      ) do
    if Enum.member?(dealer_card, guess) do
      case player do
        :player1 ->
          %{
            player1_card: dealer_card,
            player2_card: player2_card,
            dealer_card: next,
            deck: deck
          }
        :player2 ->
          %{
            player1_card: player1_card,
            player2_card: dealer_card,
            dealer_card: next,
            deck: deck
          }
      end
    else
      state
    end
  end
end
