defmodule AcccessCampusApiWeb.Router do
  use AcccessCampusApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AcccessCampusApiWeb do
    pipe_through :api
  end
end
