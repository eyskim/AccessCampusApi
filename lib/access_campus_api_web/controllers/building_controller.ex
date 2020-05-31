defmodule AccessCampusApiWeb.BuildingController do
  use AccessCampusApiWeb, :controller

  alias AccessCampusApi.Entrances
  alias AccessCampusApi.Entrances.Building

  action_fallback AccessCampusApiWeb.FallbackController

  def index(conn, _params) do
    buildings = Entrances.list_buildings()
    render(conn, "index.json-api", data: buildings)
  end

  def create(conn, %{"building" => building_params}) do
    with {:ok, %Building{} = building} <- Entrances.create_building(building_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.building_path(conn, :show, building))
      |> render("show.json-api", data: building)
    end
  end

  def show(conn, %{"id" => id}) do
    building = Entrances.get_building!(id)
    render(conn, "show.json-api", data: building)
  end

  def update(conn, %{"id" => id, "building" => building_params}) do
    building = Entrances.get_building!(id)

    with {:ok, %Building{} = building} <- Entrances.update_building(building, building_params) do
      render(conn, "show.json-api", data: building)
    end
  end

  def delete(conn, %{"id" => id}) do
    building = Entrances.get_building!(id)

    with {:ok, %Building{}} <- Entrances.delete_building(building) do
      send_resp(conn, :no_content, "")
    end
  end
end
