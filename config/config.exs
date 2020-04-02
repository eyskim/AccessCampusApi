# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :access_campus,
  ecto_repos: [AccessCampus.Repo]

# Configures the endpoint
config :access_campus, AccessCampusWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e7ZTuS6I2nKafO85gTD3aJ3NI6YjWCBlBoEOhmjWm2G4/H1mulw5wHIAUohuyR0M",
  render_errors: [view: AccessCampusWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AccessCampus.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Vox8pHfg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
