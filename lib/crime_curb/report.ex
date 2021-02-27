defmodule CrimeCurb.Report do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reports" do
    field :name, :string
    field :phone, :string
    field :email, :string
    field :location, :string
    field :date, :date
    field :type, :string
    field :description, :string

    timestamps()
  end

  def changeset(report, attrs \\ %{}) do
    report
    |> cast(attrs, [:name, :phone, :email, :location, :date, :type, :description])
    |> validate_required([:location, :date, :type, :description])
    |> unique_constraint(:email)
  end
end
