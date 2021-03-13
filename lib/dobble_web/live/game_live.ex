defmodule DobbleWeb.GameLive do
  use DobbleWeb, :live_view
  alias Dobble.Cards

  @impl true
  def mount(_params, _session, socket) do
    %{player1: player1, player2: player2, deck: deck} = Cards.two_player_setup()

    {:ok, assign(socket, player1: player1, player2: player2, deck: deck)}
  end
end
