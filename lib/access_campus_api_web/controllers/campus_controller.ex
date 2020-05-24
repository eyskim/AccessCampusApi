defmodule AccessCampusApiWeb.CampusController do
  use AccessCampusApiWeb, :controller

  alias AccessCampusApi.Access_Entrances, as: Access
  alias AccessCampusApi.Access_Entrances.Campus

  # TODO:
  # action_fallback AccessCampusApiWeb.FallbackController

  def index(conn, _params) do
    campuses = Access.list_campuses()
    render(conn, "index.json", campuses: campuses)
  end

  def create(conn, %{"campus" => campus_params}) do
    with {:ok, %Campus{} = campus} <- Access.create_campus(campus_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.campus_path(conn, :show, campus))
      |> render("show.json", campus: campus)
    end
  end

  def show(conn, %{"id" => id}) do
    campus = Access.get_campus!(id)
    render(conn, "show.json", campus: campus)
  end

  def update(conn, %{"id" => id, "campus" => campus_params}) do
    campus = Access.get_campus!(id)

    with {:ok, %Campus{} = campus} <- Access.update_campus(campus, campus_params) do
      render(conn, "show.json", campus: campus)
    end
  end

  def delete(conn, %{"id" => id}) do
    campus = Access.get_campus!(id)

    with {:ok, %Campus{}} <- Access.delete_campus(campus) do
      send_resp(conn, :no_content, "")
    end
  end
end
