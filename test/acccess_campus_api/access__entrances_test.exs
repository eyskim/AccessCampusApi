defmodule AcccessCampusApi.Access_EntrancesTest do
  use AcccessCampusApi.DataCase

  alias AcccessCampusApi.Access_Entrances

  describe "campuses" do
    alias AcccessCampusApi.Access_Entrances.Campus

    @valid_attrs %{coords: %{}, name: "some name", theme_color: "some theme_color"}
    @update_attrs %{coords: %{}, name: "some updated name", theme_color: "some updated theme_color"}
    @invalid_attrs %{coords: nil, name: nil, theme_color: nil}

    def campus_fixture(attrs \\ %{}) do
      {:ok, campus} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Access_Entrances.create_campus()

      campus
    end

    test "list_campuses/0 returns all campuses" do
      campus = campus_fixture()
      assert Access_Entrances.list_campuses() == [campus]
    end

    test "get_campus!/1 returns the campus with given id" do
      campus = campus_fixture()
      assert Access_Entrances.get_campus!(campus.id) == campus
    end

    test "create_campus/1 with valid data creates a campus" do
      assert {:ok, %Campus{} = campus} = Access_Entrances.create_campus(@valid_attrs)
      assert campus.coords == %{}
      assert campus.name == "some name"
      assert campus.theme_color == "some theme_color"
    end

    test "create_campus/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Access_Entrances.create_campus(@invalid_attrs)
    end

    test "update_campus/2 with valid data updates the campus" do
      campus = campus_fixture()
      assert {:ok, %Campus{} = campus} = Access_Entrances.update_campus(campus, @update_attrs)
      assert campus.coords == %{}
      assert campus.name == "some updated name"
      assert campus.theme_color == "some updated theme_color"
    end

    test "update_campus/2 with invalid data returns error changeset" do
      campus = campus_fixture()
      assert {:error, %Ecto.Changeset{}} = Access_Entrances.update_campus(campus, @invalid_attrs)
      assert campus == Access_Entrances.get_campus!(campus.id)
    end

    test "delete_campus/1 deletes the campus" do
      campus = campus_fixture()
      assert {:ok, %Campus{}} = Access_Entrances.delete_campus(campus)
      assert_raise Ecto.NoResultsError, fn -> Access_Entrances.get_campus!(campus.id) end
    end

    test "change_campus/1 returns a campus changeset" do
      campus = campus_fixture()
      assert %Ecto.Changeset{} = Access_Entrances.change_campus(campus)
    end
  end
end
