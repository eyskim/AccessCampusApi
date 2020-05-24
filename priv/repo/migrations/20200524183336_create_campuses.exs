defmodule AccessCampusApi.Repo.Migrations.CreateCampuses do
  use Ecto.Migration

  def change do
    create table(:campuses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :theme_color, :string, default: "#000000"
      add :coords, :map, null: false

      timestamps()
    end

    create unique_index(:campuses, [:name])
  end
end
