defmodule AccessCampusApiWeb.CampusController do
  use AcccessCampusApiWeb, :controller

  alias AcccessCampusApi.Access_Entrances, as: Access
  alias AcccessCampusApi.Access_Entrances.Campus

  # TODO:
  # action_fallback AcccessCampusApiWeb.FallbackController

  def index(conn, _params) do
    campuses = Access.list_campuses()
    render(conn, "index.json", campuses: campuses)
  end
end
