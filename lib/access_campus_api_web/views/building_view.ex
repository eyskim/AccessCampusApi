defmodule AccessCampusApiWeb.BuildingView do
  use AccessCampusApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :coords, :campus_id, :campus_name, :entrances]

  has_one :campuses,
    serializer: AccessCampusApiWeb.CampusView,
    field: :campus_name
  
  has_many :entrances,
    serializer: AccessCampusApiWeb.EntranceView

  # alias AccessCampusApiWeb.BuildingView

  # def render("index.json", %{buildings: buildings}) do
  #   %{data: render_many(buildings, BuildingView, "building.json")}
  # end

  # def render("show.json", %{building: building}) do
  #   %{data: render_one(building, BuildingView, "building.json")}
  # end

  # def render("building.json", %{building: building}) do
  #   %{id: building.id,
  #     name: building.name,
  #     coords: building.coords,
  #     campus_id: building.campus_id,
  #     campus_name: building.campus_name}
  # end
end
