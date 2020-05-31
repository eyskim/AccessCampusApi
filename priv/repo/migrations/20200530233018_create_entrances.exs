defmodule AccessCampusApi.Repo.Migrations.CreateEntrances do
  use Ecto.Migration

  def change do
    create table(:entrances) do
      add :coords, :map
      add :building_id, references(:buildings)

      timestamps()
    end

  end
end
