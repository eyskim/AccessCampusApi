defmodule AcccessCampusApi.Access_Entrances.Campus do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "campuses" do
    field :coords, :map
    field :name, :string
    field :theme_color, :string

    timestamps()
  end

  @doc false
  def changeset(campus, attrs) do
    campus
    |> cast(attrs, [:name, :theme_color, :coords])
    |> validate_required([:name, :theme_color, :coords])
    |> unique_constraint(:name)
  end
end
