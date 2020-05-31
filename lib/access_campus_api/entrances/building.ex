defmodule AccessCampusApi.Entrances.Building do
  use Ecto.Schema
  import Ecto.Changeset
  alias AccessCampusApi.Entrances

  schema "buildings" do
    field :coords, :map
    field :name, :string
    field :campus_name, :string
    belongs_to :campus, Entrances.Campus
    has_many :entrances, Entrances.Entrance

    timestamps()
  end

  @doc false
  def changeset(building, attrs) do
    building
    |> cast(attrs, [:name, :coords])
    |> validate_required([:name, :coords])
  end
end
