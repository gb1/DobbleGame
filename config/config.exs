# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dobble,
  ecto_repos: [Dobble.Repo]

# Configures the endpoint
config :dobble, DobbleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y64xglxbeX7IPQfAhgTscMxaP8UtVfIIrM+QgRAlAMNFyX93g7cOGPk8D0UZblGg",
  render_errors: [view: DobbleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Dobble.PubSub,
  live_view: [signing_salt: "ZFcJsFSo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
