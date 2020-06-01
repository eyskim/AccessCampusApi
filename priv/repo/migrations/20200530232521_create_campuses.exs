defmodule AccessCampusApi.Repo.Migrations.CreateCampuses do
  use Ecto.Migration

  def change do
    create table(:campuses) do
      add :name, :string
      add :theme_color, :string
      add :coords, :map

      timestamps()
    end

  end
end
