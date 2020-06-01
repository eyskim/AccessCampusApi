defmodule AccessCampusApiWeb.Router do
  use AccessCampusApiWeb, :router

  pipeline :browser do
    plug(CORSPlug, origin: "*")
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug(CORSPlug, origin: "*")
    plug :accepts, ["json-api"]
    plug :fetch_session
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  pipeline :json_api do

  end

  scope "/", AccessCampusApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", AccessCampusApiWeb do
    pipe_through :api

    resources "/campuses", CampusController
    resources "/buildings", BuildingController do
      resources "/entrances", EntranceController
    end
  end
end
