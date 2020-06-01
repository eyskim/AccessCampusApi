defmodule AccessCampusApi.Repo.Migrations.CreateBuildings do
  use Ecto.Migration

  def change do
    create table(:buildings) do
      add :name, :string
      add :coords, :map
      add :campus_id, references(:campuses)

      timestamps()
    end

  end
end
