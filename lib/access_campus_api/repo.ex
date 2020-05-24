defmodule AccessCampusApi.Repo do
  use Ecto.Repo,
    otp_app: :access_campus_api,
    adapter: Ecto.Adapters.Postgres
end
