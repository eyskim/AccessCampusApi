defmodule AccessCampusApi.EntrancesTest do
  use AccessCampusApi.DataCase

  alias AccessCampusApi.Entrances

  describe "campuses" do
    alias AccessCampusApi.Entrances.Campus

    @valid_attrs %{coords: %{}, name: "some name", theme_color: "some theme_color"}
    @update_attrs %{coords: %{}, name: "some updated name", theme_color: "some updated theme_color"}
    @invalid_attrs %{coords: nil, name: nil, theme_color: nil}

    def campus_fixture(attrs \\ %{}) do
      {:ok, campus} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Entrances.create_campus()

      campus
    end

    test "list_campuses/0 returns all campuses" do
      campus = campus_fixture()
      assert Entrances.list_campuses() == [campus]
    end

    test "get_campus!/1 returns the campus with given id" do
      campus = campus_fixture()
      assert Entrances.get_campus!(campus.id) == campus
    end

    test "create_campus/1 with valid data creates a campus" do
      assert {:ok, %Campus{} = campus} = Entrances.create_campus(@valid_attrs)
      assert campus.coords == %{}
      assert campus.name == "some name"
      assert campus.theme_color == "some theme_color"
    end

    test "create_campus/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Entrances.create_campus(@invalid_attrs)
    end

    test "update_campus/2 with valid data updates the campus" do
      campus = campus_fixture()
      assert {:ok, %Campus{} = campus} = Entrances.update_campus(campus, @update_attrs)
      assert campus.coords == %{}
      assert campus.name == "some updated name"
      assert campus.theme_color == "some updated theme_color"
    end

    test "update_campus/2 with invalid data returns error changeset" do
      campus = campus_fixture()
      assert {:error, %Ecto.Changeset{}} = Entrances.update_campus(campus, @invalid_attrs)
      assert campus == Entrances.get_campus!(campus.id)
    end

    test "delete_campus/1 deletes the campus" do
      campus = campus_fixture()
      assert {:ok, %Campus{}} = Entrances.delete_campus(campus)
      assert_raise Ecto.NoResultsError, fn -> Entrances.get_campus!(campus.id) end
    end

    test "change_campus/1 returns a campus changeset" do
      campus = campus_fixture()
      assert %Ecto.Changeset{} = Entrances.change_campus(campus)
    end
  end

  describe "buildings" do
    alias AccessCampusApi.Entrances.Building

    @valid_attrs %{coords: %{}, name: "some name"}
    @update_attrs %{coords: %{}, name: "some updated name"}
    @invalid_attrs %{coords: nil, name: nil}

    def building_fixture(attrs \\ %{}) do
      {:ok, building} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Entrances.create_building()

      building
    end

    test "list_buildings/0 returns all buildings" do
      building = building_fixture()
      assert Entrances.list_buildings() == [building]
    end

    test "get_building!/1 returns the building with given id" do
      building = building_fixture()
      assert Entrances.get_building!(building.id) == building
    end

    test "create_building/1 with valid data creates a building" do
      assert {:ok, %Building{} = building} = Entrances.create_building(@valid_attrs)
      assert building.coords == %{}
      assert building.name == "some name"
    end

    test "create_building/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Entrances.create_building(@invalid_attrs)
    end

    test "update_building/2 with valid data updates the building" do
      building = building_fixture()
      assert {:ok, %Building{} = building} = Entrances.update_building(building, @update_attrs)
      assert building.coords == %{}
      assert building.name == "some updated name"
    end

    test "update_building/2 with invalid data returns error changeset" do
      building = building_fixture()
      assert {:error, %Ecto.Changeset{}} = Entrances.update_building(building, @invalid_attrs)
      assert building == Entrances.get_building!(building.id)
    end

    test "delete_building/1 deletes the building" do
      building = building_fixture()
      assert {:ok, %Building{}} = Entrances.delete_building(building)
      assert_raise Ecto.NoResultsError, fn -> Entrances.get_building!(building.id) end
    end

    test "change_building/1 returns a building changeset" do
      building = building_fixture()
      assert %Ecto.Changeset{} = Entrances.change_building(building)
    end
  end

  describe "entrances" do
    alias AccessCampusApi.Entrances.Entrance

    @valid_attrs %{coords: []}
    @update_attrs %{coords: []}
    @invalid_attrs %{coords: nil}

    def entrance_fixture(attrs \\ %{}) do
      {:ok, entrance} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Entrances.create_entrance()

      entrance
    end

    test "list_entrances/0 returns all entrances" do
      entrance = entrance_fixture()
      assert Entrances.list_entrances() == [entrance]
    end

    test "get_entrance!/1 returns the entrance with given id" do
      entrance = entrance_fixture()
      assert Entrances.get_entrance!(entrance.id) == entrance
    end

    test "create_entrance/1 with valid data creates a entrance" do
      assert {:ok, %Entrance{} = entrance} = Entrances.create_entrance(@valid_attrs)
      assert entrance.coords == []
    end

    test "create_entrance/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Entrances.create_entrance(@invalid_attrs)
    end

    test "update_entrance/2 with valid data updates the entrance" do
      entrance = entrance_fixture()
      assert {:ok, %Entrance{} = entrance} = Entrances.update_entrance(entrance, @update_attrs)
      assert entrance.coords == []
    end

    test "update_entrance/2 with invalid data returns error changeset" do
      entrance = entrance_fixture()
      assert {:error, %Ecto.Changeset{}} = Entrances.update_entrance(entrance, @invalid_attrs)
      assert entrance == Entrances.get_entrance!(entrance.id)
    end

    test "delete_entrance/1 deletes the entrance" do
      entrance = entrance_fixture()
      assert {:ok, %Entrance{}} = Entrances.delete_entrance(entrance)
      assert_raise Ecto.NoResultsError, fn -> Entrances.get_entrance!(entrance.id) end
    end

    test "change_entrance/1 returns a entrance changeset" do
      entrance = entrance_fixture()
      assert %Ecto.Changeset{} = Entrances.change_entrance(entrance)
    end
  end
end
