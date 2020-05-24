defmodule AcccessCampusApi.Repo.Migrations.CreateCampuses do
  use Ecto.Migration

  def change do
    create table(:campuses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :theme_color, :string
      add :coords, :map

      timestamps()
    end

    create unique_index(:campuses, [:name])
  end
end
