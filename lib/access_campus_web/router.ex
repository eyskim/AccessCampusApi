defmodule AccessCampusWeb.Router do
  use AccessCampusWeb, :router

  pipeline :browser do
    plug CORSPlug, origin: "*"
    plug :accepts, ["html", "json"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
    plug :fetch_session
    plug :fetch_flash
  end

  scope "/", AccessCampusWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", AccessCampusWeb do
    pipe_through :api

    get "/buildings", BuildingController, :index
    get "/buildings/:id", BuildingController, :show
  end
end
