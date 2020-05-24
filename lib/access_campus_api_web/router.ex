defmodule AccessCampusApiWeb.Router do
  use AccessCampusApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AccessCampusApiWeb do
    pipe_through :api

    resources "/campuses", CampusController
  end
end
