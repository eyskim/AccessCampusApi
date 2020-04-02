defmodule AccessCampusWeb.BuildingView do
  use AccessCampusWeb, :view
  alias AccessCampusWeb.BuildingView

  def render("index.json", %{buildings: buildings}) do
    %{data: render_many(buildings, BuildingView, "building.json")}
  end

  def render("show.json", %{building: building}) do
    %{data: render_one(building, BuildingView, "building.json")}
  end

  def render("building.json", %{building: building}) do
    %{id: building.id,
      name: building.name,
      entrances: building.entrances}
  end
end
