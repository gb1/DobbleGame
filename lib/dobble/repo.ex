defmodule Dobble.Repo do
  use Ecto.Repo,
    otp_app: :dobble,
    adapter: Ecto.Adapters.Postgres
end
