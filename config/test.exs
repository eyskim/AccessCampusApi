use Mix.Config

# Configure your database
config :acccess_campus_api, AcccessCampusApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "acccess_campus_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :acccess_campus_api, AcccessCampusApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
