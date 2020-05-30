defmodule AccessCampusApiWeb.CampusView do
  use AccessCampusApiWeb, :view
  alias AccessCampusApiWeb.CampusView

  def render("index.json", %{campuses: campuses}) do
    %{data: render_many(campuses, CampusView, "campus.json")}
  end

  def render("show.json", %{campus: campus}) do
    %{data: render_one(campus, CampusView, "campus.json")}
  end

  def render("campus.json", %{campus: campus}) do
    %{id: campus.id,
      name: campus.name,
      theme_color: campus.theme_color,
      coords: campus.coords}
  end
end
