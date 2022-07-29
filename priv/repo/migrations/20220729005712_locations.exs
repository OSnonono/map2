defmodule Map2.Repo.Migrations.Locations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add(:lat, :float)
      add(:long, :float)
      add(:name, :string)

      timestamps()
    end
  end
end
