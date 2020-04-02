defmodule AccessCampus.Repo do
  use Ecto.Repo,
    otp_app: :access_campus,
    adapter: Ecto.Adapters.Postgres
end
