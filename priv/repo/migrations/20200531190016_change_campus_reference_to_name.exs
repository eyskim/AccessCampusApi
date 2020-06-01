defmodule AccessCampusApi.Repo.Migrations.ChangeCampusReferenceToName do
  use Ecto.Migration

  def change do
    alter table(:buildings) do
      add :campus_name, :string
    end
  end
end
