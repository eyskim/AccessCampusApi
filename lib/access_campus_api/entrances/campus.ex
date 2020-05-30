defmodule AccessCampusApi.Entrances.Campus do
  use Ecto.Schema
  import Ecto.Changeset
  alias AccessCampusApi.Entrances

  schema "campuses" do
    field :coords, :map
    field :name, :string
    field :theme_color, :string
    has_many :buildings, Entrances.Building

    timestamps()
  end

  @doc false
  def changeset(campus, attrs) do
    campus
    |> cast(attrs, [:name, :theme_color, :coords])
    |> validate_required([:name, :theme_color, :coords])
  end
end
