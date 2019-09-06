defmodule RotRaven.Vehicle.Tire.LoadIndex do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tire_load_indexes" do
    field :load_index, :integer
    field :air_pressure, :integer
    field :load_capacity, :integer
    field :is_extra_load_standard, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(road_index, attrs) do
    road_index
    |> cast(attrs, [:load_index, :air_pressure, :load_capacity, :is_extra_load_standard])
    |> validate_required([:load_index, :load_capacity, :is_extra_load_standard])
  end
end
