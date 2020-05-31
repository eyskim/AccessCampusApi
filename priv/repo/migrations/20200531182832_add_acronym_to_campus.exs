defmodule AccessCampusApi.Repo.Migrations.AddAcronymToCampus do
  use Ecto.Migration

  def change do
    alter table(:campuses) do
      add :acronym, :string
    end
  end
end
