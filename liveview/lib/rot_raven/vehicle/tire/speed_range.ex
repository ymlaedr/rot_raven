defmodule RotRaven.Vehicle.Tire.SpeedRange do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tire_speed_ranges" do
    field :speed_range_symbol, :string
    field :max_speed, :integer

    timestamps()
  end

  @doc false
  def changeset(speed_range, attrs) do
    speed_range
    |> cast(attrs, [:speed_range_symbol, :max_speed])
    |> validate_required([:speed_range_symbol, :max_speed])
  end
end
