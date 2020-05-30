defmodule AccessCampusApi.Entrances.Entrance do
  use Ecto.Schema
  import Ecto.Changeset
  alias AccessCampusApi.Entrances

  schema "entrances" do
    field :coords, {:array, :map}
    belongs_to :building, Entrances.Building

    timestamps()
  end

  @doc false
  def changeset(entrance, attrs) do
    entrance
    |> cast(attrs, [:coords])
    |> validate_required([:coords])
  end
end
