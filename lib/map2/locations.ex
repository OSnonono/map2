defmodule Map2.Locations do
  import Ecto.Query
  alias Map2.Repo
  alias Map2.Location

  def get_location(id) do
    query = from(l in Location, where: l.id == ^id)

    Repo.one(query)
  end

  def get_all_location do
    query = from(Location)

    Repo.all(query)
  end

  def insert_location(%Location{} = location) do
    Repo.insert(location)
  end
end
