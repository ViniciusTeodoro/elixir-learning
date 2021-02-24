# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirLearning,
  ecto_repos: [ElixirLearning.Repo]

# Configures the endpoint
config :elixirLearning, ElixirLearningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YelxED0qYNknpaQK1Pz1dIO7Zse4mpSOtuZICZ1NMuMfr4hShtOiVzvS52Ici4u0",
  render_errors: [view: ElixirLearningWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirLearning.PubSub,
  live_view: [signing_salt: "ZnY9Okjy"]


  config :elixirLearning, ElixirLearning.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
