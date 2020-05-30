defmodule AccessCampusApiWeb.CampusControllerTest do
  use AccessCampusApiWeb.ConnCase

  alias AccessCampusApi.Entrances
  alias AccessCampusApi.Entrances.Campus

  @create_attrs %{
    coords: %{},
    name: "some name",
    theme_color: "some theme_color"
  }
  @update_attrs %{
    coords: %{},
    name: "some updated name",
    theme_color: "some updated theme_color"
  }
  @invalid_attrs %{coords: nil, name: nil, theme_color: nil}

  def fixture(:campus) do
    {:ok, campus} = Entrances.create_campus(@create_attrs)
    campus
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all campuses", %{conn: conn} do
      conn = get(conn, Routes.campus_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create campus" do
    test "renders campus when data is valid", %{conn: conn} do
      conn = post(conn, Routes.campus_path(conn, :create), campus: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.campus_path(conn, :show, id))

      assert %{
               "id" => id,
               "coords" => %{},
               "name" => "some name",
               "theme_color" => "some theme_color"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.campus_path(conn, :create), campus: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update campus" do
    setup [:create_campus]

    test "renders campus when data is valid", %{conn: conn, campus: %Campus{id: id} = campus} do
      conn = put(conn, Routes.campus_path(conn, :update, campus), campus: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.campus_path(conn, :show, id))

      assert %{
               "id" => id,
               "coords" => {},
               "name" => "some updated name",
               "theme_color" => "some updated theme_color"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, campus: campus} do
      conn = put(conn, Routes.campus_path(conn, :update, campus), campus: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete campus" do
    setup [:create_campus]

    test "deletes chosen campus", %{conn: conn, campus: campus} do
      conn = delete(conn, Routes.campus_path(conn, :delete, campus))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.campus_path(conn, :show, campus))
      end
    end
  end

  defp create_campus(_) do
    campus = fixture(:campus)
    {:ok, campus: campus}
  end
end
