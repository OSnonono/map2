defmodule Map2.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field(:lat, :float)
    field(:long, :float)
    field(:name, :string)

    timestamps()
  end

  # Ecto.Changeset.cast/4
  def build_changeset() do
    cast(%__MODULE__{}, %{}, [])
  end
end
