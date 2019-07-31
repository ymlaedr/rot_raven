defmodule RotRaven.Vehicle.Tire.RoadIndex do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tire_road_indexes" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(road_index, attrs) do
    road_index
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
