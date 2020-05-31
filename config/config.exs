# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :access_campus_api,
  ecto_repos: [AccessCampusApi.Repo]

# Configures the endpoint
config :access_campus_api, AccessCampusApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TVSIh5gO8FxVKgWHn3A30A2WCYKLy69pTHRPcN6pr6d2l2FkpsQLmj9BM2evKy/X",
  render_errors: [view: AccessCampusApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AccessCampusApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "i1oJunwf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :format_encoders,
  "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
