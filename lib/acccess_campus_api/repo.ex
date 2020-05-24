defmodule AcccessCampusApi.Repo do
  use Ecto.Repo,
    otp_app: :acccess_campus_api,
    adapter: Ecto.Adapters.Postgres
end
