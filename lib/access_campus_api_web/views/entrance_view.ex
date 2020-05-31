defmodule AccessCampusApiWeb.EntranceView do
  use AccessCampusApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:coords, :building_id, :building_name]
  # alias AccessCampusApiWeb.EntranceView

  # def render("index.json", %{entrances: entrances}) do
  #   %{data: render_many(entrances, EntranceView, "entrance.json")}
  # end

  # def render("show.json", %{entrance: entrance}) do
  #   %{data: render_one(entrance, EntranceView, "entrance.json")}
  # end

  # def render("entrance.json", %{entrance: entrance}) do
  #   %{id: entrance.id,
  #     coords: entrance.coords,
  #     building_id: entrance.building_id,
  #     building_name: entrance.building_name}
  # end
end
