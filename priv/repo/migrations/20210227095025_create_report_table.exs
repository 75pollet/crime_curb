defmodule CrimeCurb.Repo.Migrations.CreateReportTable do
  use Ecto.Migration

  def change do
    create table(:reports) do
      add :name, :string
      add :phone, :string
      add :email, :string
      add :location, :string
      add :date, :date
      add :type, :string
      add :description, :string

      timestamps()
    end
  end
end
