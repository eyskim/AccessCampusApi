defmodule AccessCampusApiWeb.EntranceView do
  use AccessCampusApiWeb, :view
  alias AccessCampusApiWeb.EntranceView

  def render("index.json", %{entrances: entrances}) do
    %{data: render_many(entrances, EntranceView, "entrance.json")}
  end

  def render("show.json", %{entrance: entrance}) do
    %{data: render_one(entrance, EntranceView, "entrance.json")}
  end

  def render("entrance.json", %{entrance: entrance}) do
    %{id: entrance.id,
      coords: entrance.coords}
  end
end
