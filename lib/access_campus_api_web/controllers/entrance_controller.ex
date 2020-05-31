defmodule AccessCampusApiWeb.EntranceController do
  use AccessCampusApiWeb, :controller

  alias AccessCampusApi.Entrances
  alias AccessCampusApi.Entrances.Entrance

  action_fallback AccessCampusApiWeb.FallbackController

  def index(conn, _params) do
    entrances = Entrances.list_entrances()
    render(conn, "index.json", data: entrances)
  end

  def create(conn, %{"entrance" => entrance_params}) do
    with {:ok, %Entrance{} = entrance} <- Entrances.create_entrance(entrance_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.entrance_path(conn, :show, entrance))
      |> render("show.json", data: entrance)
    end
  end

  def show(conn, %{"id" => id}) do
    entrance = Entrances.get_entrance!(id)
    render(conn, "show.json", data: entrance)
  end

  def update(conn, %{"id" => id, "entrance" => entrance_params}) do
    entrance = Entrances.get_entrance!(id)

    with {:ok, %Entrance{} = entrance} <- Entrances.update_entrance(entrance, entrance_params) do
      render(conn, "show.json", data: entrance)
    end
  end

  def delete(conn, %{"id" => id}) do
    entrance = Entrances.get_entrance!(id)

    with {:ok, %Entrance{}} <- Entrances.delete_entrance(entrance) do
      send_resp(conn, :no_content, "")
    end
  end
end
