# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :quesadilla,
  ecto_repos: [Quesadilla.Repo]

# Configures the endpoint
config :quesadilla, QuesadillaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zHxFkqca4vyTefApg4xfJm4bc7gxoIuC4/LsQ9cvJh43FAbIhuJe1jVlAYyIysYu",
  render_errors: [view: QuesadillaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Quesadilla.PubSub,
  live_view: [signing_salt: "MhYbFsod"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
