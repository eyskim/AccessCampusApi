defmodule AccessCampusApi.Repo.Migrations.CreateBuildingReference do
  use Ecto.Migration

  def change do
    alter table(:entrances) do
      add :building_name, :string
    end
  end
end
