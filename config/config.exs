# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :acccess_campus_api,
  ecto_repos: [AcccessCampusApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :acccess_campus_api, AcccessCampusApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EvCkjAGJ0H8iUgYzHCP1g9C0+cedqtAuFby4xxdpbnzcSg3/+rp1uIzDwE81IjEf",
  render_errors: [view: AcccessCampusApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AcccessCampusApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "qDMWlFMv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
