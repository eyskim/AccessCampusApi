defmodule AccessCampusApiWeb.EntranceControllerTest do
  use AccessCampusApiWeb.ConnCase

  alias AccessCampusApi.Entrances
  alias AccessCampusApi.Entrances.Entrance

  @create_attrs %{
    coords: []
  }
  @update_attrs %{
    coords: []
  }
  @invalid_attrs %{coords: nil}

  def fixture(:entrance) do
    {:ok, entrance} = Entrances.create_entrance(@create_attrs)
    entrance
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all entrances", %{conn: conn} do
      conn = get(conn, Routes.entrance_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create entrance" do
    test "renders entrance when data is valid", %{conn: conn} do
      conn = post(conn, Routes.entrance_path(conn, :create), entrance: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.entrance_path(conn, :show, id))

      assert %{
               "id" => id,
               "coords" => []
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.entrance_path(conn, :create), entrance: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update entrance" do
    setup [:create_entrance]

    test "renders entrance when data is valid", %{conn: conn, entrance: %Entrance{id: id} = entrance} do
      conn = put(conn, Routes.entrance_path(conn, :update, entrance), entrance: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.entrance_path(conn, :show, id))

      assert %{
               "id" => id,
               "coords" => []
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, entrance: entrance} do
      conn = put(conn, Routes.entrance_path(conn, :update, entrance), entrance: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete entrance" do
    setup [:create_entrance]

    test "deletes chosen entrance", %{conn: conn, entrance: entrance} do
      conn = delete(conn, Routes.entrance_path(conn, :delete, entrance))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.entrance_path(conn, :show, entrance))
      end
    end
  end

  defp create_entrance(_) do
    entrance = fixture(:entrance)
    {:ok, entrance: entrance}
  end
end
